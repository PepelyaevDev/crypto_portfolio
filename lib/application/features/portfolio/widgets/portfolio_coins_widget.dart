import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/features/portfolio/pages/add_payment_page.dart';
import 'package:crypto_portfolio/application/features/portfolio/pages/detail_portfolio_coin_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/data.dart';
import 'package:flutter/material.dart';

class PortfolioCoinsWidget extends StatelessWidget {
  final CoinsEntity coins;
  const PortfolioCoinsWidget({required this.coins});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: ListView.separated(
        itemBuilder: (_, i) => _PortfolioCoinWidget(coins.list[i]),
        separatorBuilder: (_, __) => Divider(height: 2),
        itemCount: coins.list.length,
      ),
    );
  }
}

class _PortfolioCoinWidget extends StatefulWidget {
  final CoinEntity coinEntity;

  _PortfolioCoinWidget(this.coinEntity);

  @override
  State<_PortfolioCoinWidget> createState() => _PortfolioCoinWidgetState();
}

class _PortfolioCoinWidgetState extends State<_PortfolioCoinWidget> {
  bool openDetails = false;

  void changeOpenDetails() {
    setState(() {
      openDetails = !openDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (_) => DetailPortfolioCoinPage(
                  widget.coinEntity.id,
                ),
              ),
            );
          },
          child: _PortfolioPageRow(
            coin: Image.network(widget.coinEntity.image, width: 20, height: 20),
            name: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.coinEntity.symbol.toString().toUpperCase(),
                  style: AppStyles.bold12,
                ),
                SizedBox(height: 3),
                Text(
                  widget.coinEntity.currentPrice.moneyFull,
                  style: AppStyles.normal12,
                ),
              ],
            ),
            holdings: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  widget.coinEntity.priceAllCoins.moneyFull,
                  style: AppStyles.bold12,
                ),
                SizedBox(height: 3),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(widget.coinEntity.iconData, color: widget.coinEntity.color, size: 14),
                    Text(
                      ' ${widget.coinEntity.percentageDifference.percentageToString} % '
                      '(${widget.coinEntity.dollarDifference.moneyFull})',
                      style: AppStyles.normal12.copyWith(color: widget.coinEntity.color),
                    ),
                  ],
                ),
              ],
            ),
            button: InkWell(
              borderRadius: BorderRadius.circular(10),
              onTap: changeOpenDetails,
              child: Icon(
                openDetails ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                size: 30,
              ),
            ),
          ),
        ),
        openDetails ? _PortfolioCoinWidgetDetails(widget.coinEntity) : SizedBox()
      ],
    );
  }
}

class _PortfolioCoinWidgetDetails extends StatelessWidget {
  final CoinEntity coinEntity;

  _PortfolioCoinWidgetDetails(this.coinEntity);

  @override
  Widget build(BuildContext context) {
    return _PortfolioPageRow(
      name: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            coinEntity.averagePrice.moneyFull,
            style: AppStyles.bold12,
          ),
          Text(
            context.localization.averageNetCost,
            style: AppStyles.normal10,
          ),
        ],
      ),
      holdings: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            coinEntity.moneyInvested.moneyFull,
            style: AppStyles.bold12,
          ),
          Text(
            context.localization.totalCost,
            style: AppStyles.normal10,
          ),
        ],
      ),
      button: InkWell(
        borderRadius: BorderRadius.circular(10),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => AddPaymentPage(
                coinID: coinEntity.id,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(5.0),
          child: Icon(
            Icons.add,
            size: 20,
          ),
        ),
      ),
    );
  }
}

class _PortfolioPageRow extends StatelessWidget {
  final Widget? coin;
  final Widget name;
  final Widget holdings;
  final Widget button;

  const _PortfolioPageRow({
    this.coin,
    required this.name,
    required this.holdings,
    required this.button,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        children: [
          Expanded(
            flex: 1,
            child: Align(
              child: coin,
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerLeft,
              child: name,
            ),
          ),
          Expanded(
            flex: 6,
            child: Align(
              alignment: Alignment.centerRight,
              child: holdings,
            ),
          ),
          Expanded(
            flex: 1,
            child: Align(
              child: button,
            ),
          ),
        ],
      ),
    );
  }
}
