import 'dart:async';

import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/logo_widget.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/presentation/news/bloc/init_news_page_bloc/init_news_page_bloc.dart';
import 'package:crypto_portfolio/presentation/news/bloc/news_bloc/news_bloc.dart';
import 'package:crypto_portfolio/presentation/news/widgets/news_desc_popup.dart';
import 'package:flutter/material.dart';
import 'package:crypto_portfolio/presentation/news/widgets/news_list_widget.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class NewsPage extends StatefulWidget {
  const NewsPage();

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    final initNewsPageBloc = InitNewsPageBloc(context.read(), context.read());
    final hasFavorites = initNewsPageBloc.state.hasFavorites;
    tabController = TabController(
      initialIndex: hasFavorites ? 1 : 0,
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
        title: LogoWidget(),
        centerTitle: true,
        actions: [
          AppBarIconButton(
            rightPadding: 10,
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
          indicatorColor: AppColors.primary,
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

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        final completer = Completer<void>();
        context.read<NewsBloc>().add(NewsEvent.refresh(completer: completer));
        await completer.future;
      },
      child: SingleChildScrollView(
        controller: controller,
        child: BlocBuilder<NewsBloc, NewsState>(
          builder: (context, state) {
            final double bottomPadding = state.maybeMap(
              noCoins: (_) => MediaQuery.sizeOf(context).height,
              error: (state) {
                if (state.news != null && state.news!.list.isNotEmpty) {
                  return 0;
                }
                return MediaQuery.sizeOf(context).height;
              },
              orElse: () => 0,
            );
            return Padding(
              padding: EdgeInsets.only(bottom: bottomPadding),
              child: NewsListWidget(
                controller: controller,
                category: widget.category,
              ),
            );
          },
        ),
      ),
    );
  }
}
