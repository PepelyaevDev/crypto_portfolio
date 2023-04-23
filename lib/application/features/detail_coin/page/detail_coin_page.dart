import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/detail_portfolio_coin_widget.dart';
import 'package:flutter/material.dart';

class DetailCoinPage extends StatefulWidget {
  final String coinLogo;
  final String coinSymbol;
  final String coinId;
  final int initialIndex;
  const DetailCoinPage({
    required this.coinLogo,
    required this.coinSymbol,
    required this.coinId,
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
              Image.network(widget.coinLogo, width: 30, height: 30),
              SizedBox(width: 10),
              Text(widget.coinSymbol.toUpperCase()),
            ],
          ),
        ),
        shadowColor: AppColors.transparent,
        backgroundColor: AppColors.white,
        foregroundColor: AppColors.black,
        bottom: TabBar(
          labelColor: AppColors.black,
          labelStyle: AppStyles.normal14,
          indicatorColor: AppColors.blue,
          controller: tabController,
          tabs: <Tab>[
            Tab(text: 'Market data'),
            Tab(text: 'Portfolio data'),
          ],
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: <Widget>[
          Center(
            child: Text(
              'market info',
            ),
          ),
          DetailPortfolioCoinWidget(widget.coinId),
        ],
      ),
    );
  }
}
