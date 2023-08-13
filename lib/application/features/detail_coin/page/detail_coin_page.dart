import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/market_widgets/detail_market_coin_widget.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/portfolio_widgets/detail_portfolio_coin_widget.dart';
import 'package:crypto_portfolio/application/features/watchlist/widgets/watchlist_icon_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class DetailCoinPage extends StatefulWidget {
  final String coinLogo;
  final CoinId id;
  final int initialIndex;
  const DetailCoinPage({
    required this.coinLogo,
    required this.id,
    this.initialIndex = 0,
  });

  @override
  State<DetailCoinPage> createState() => _DetailCoinPageState();
}

class _DetailCoinPageState extends State<DetailCoinPage> with SingleTickerProviderStateMixin {
  late final TabController tabController;

  @override
  void initState() {
    tabController = TabController(
      vsync: this,
      length: 2,
      initialIndex: widget.initialIndex,
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
        centerTitle: true,
        title: SizedBox(
          height: 30,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                widget.coinLogo,
                width: 30,
                height: 30,
                errorBuilder: (_, __, ___) => SizedBox(),
              ),
              SizedBox(width: 10),
              Text(
                widget.id.symbol,
                style: AppStyles.normal14,
              ),
            ],
          ),
        ),
        actions: [
          WatchlistIconWidget(widget.id, appBarIcon: true),
          SizedBox(width: 5),
        ],
        shadowColor: AppColors.transparent,
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.blackLight,
        bottom: TabBar(
          labelColor: AppColors.blackLight,
          labelStyle: AppStyles.normal14,
          indicatorColor: AppColors.primary,
          controller: tabController,
          tabs: <Tab>[
            Tab(text: context.localization.marketData),
            Tab(text: context.localization.portfolioData),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          DetailMarketCoinWidget(widget.id),
          DetailPortfolioCoinWidget(widget.id),
        ],
      ),
    );
  }
}
