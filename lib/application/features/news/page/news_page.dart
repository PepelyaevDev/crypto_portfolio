import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/development_widget.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:flutter/material.dart';

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
      length: 3,
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
        bottom: TabBar(
          labelColor: AppColors.blackLight,
          labelStyle: AppStyles.normal14,
          indicatorColor: AppColors.blue,
          controller: tabController,
          tabs: <Tab>[
            Tab(text: context.localization.allNews),
            Tab(text: context.localization.watchlist),
            Tab(text: context.localization.portfolio),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          DevelopmentWidget(context.localization.hereWillBeAllNews),
          DevelopmentWidget(context.localization.hereWillBeWatchlistNews),
          DevelopmentWidget(context.localization.hereWillBePortfolioNews),
        ],
      ),
    );
  }
}
