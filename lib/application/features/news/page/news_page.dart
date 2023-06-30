import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/news/bloc/news_bloc.dart';
import 'package:crypto_portfolio/application/features/news/widgets/news_desc_popup.dart';
import 'package:flutter/material.dart';
import 'package:crypto_portfolio/application/features/news/widgets/news_list_widget.dart';

class NewsPage extends StatefulWidget {
  const NewsPage();

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      vsync: this,
      length: 2,
    );
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shadowColor: AppColors.transparent,
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.blackLight,
        actions: [
          AppBarIconButton(
            iconData: Icons.question_mark_rounded,
            onTap: () {
              showDialog(
                context: context,
                builder: (_) => NewsDescPopup(),
              );
            },
          ),
        ],
        bottom: TabBar(
          labelColor: AppColors.blackLight,
          labelStyle: AppStyles.normal14,
          indicatorColor: AppColors.blue,
          controller: tabController,
          tabs: <Tab>[
            Tab(text: context.localization.allNews),
            Tab(text: context.localization.watchlist),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          _NewsListContent(category: NewsCategory.all),
          _NewsListContent(category: NewsCategory.watchlist),
        ],
      ),
    );
  }
}

class _NewsListContent extends StatefulWidget {
  final NewsCategory category;
  const _NewsListContent({
    required this.category,
  });

  @override
  State<_NewsListContent> createState() => _NewsListContentState();
}

class _NewsListContentState extends State<_NewsListContent> {
  final ScrollController controller = ScrollController();
  bool refreshState = false;

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        _refresh();
        return;
      },
      child: SingleChildScrollView(
        controller: controller,
        child: refreshState
            ? SizedBox()
            : NewsListWidget(
                controller: controller,
                category: widget.category,
              ),
      ),
    );
  }

  Future<void> _refresh() async {
    setState(() {
      refreshState = true;
    });
    await Future<void>.delayed(const Duration(milliseconds: 1));
    setState(() {
      refreshState = false;
    });
  }
}
