import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/market_widgets/market_coin_content.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/portfolio_coin_content.dart';
import 'package:crypto_portfolio/presentation/watchlist/widgets/watchlist_icon_widget.dart';
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
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.network(
              widget.coinLogo,
              width: 25,
              height: 25,
              errorBuilder: (_, __, ___) => SizedBox(),
            ),
            SizedBox(width: 10),
            Text(
              widget.id.symbol,
              style: context.styles.labelLarge,
            ),
          ],
        ),
        actions: [
          WatchlistIconWidget(widget.id, appBarIcon: true),
          SizedBox(width: marginFromEdgeOfScreen),
        ],
        bottom: TabBar(
          labelStyle: context.styles.bodySmall,
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
          MarketCoinContent(widget.id),
          PortfolioCoinContent(widget.id),
        ],
      ),
    );
  }
}
