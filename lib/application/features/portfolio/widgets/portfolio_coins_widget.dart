import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/features/detail_coin/page/detail_coin_page.dart';
import 'package:crypto_portfolio/application/features/portfolio/pages/add_payment_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';

class PortfolioCoinsWidget extends StatelessWidget {
  final CoinsEntity coins;
  const PortfolioCoinsWidget({required this.coins});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, i) => Padding(
        padding: EdgeInsets.only(top: i == 0 ? 8 : 0),
        child: _PortfolioCoinWidget(coins.list[i]),
      ),
      separatorBuilder: (_, __) => Divider(height: 2),
      itemCount: coins.list.length,
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
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailCoinPage(
              coinLogo: widget.coinEntity.image,
              coinSymbol: widget.coinEntity.symbol,
              coinId: widget.coinEntity.id,
              initialIndex: 1,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            _PortfolioPageRow(
              coin: Image.network(widget.coinEntity.image, width: 25, height: 25),
              name: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.coinEntity.symbol.toString().toUpperCase(),
                    style: AppStyles.bold14,
                  ),
                  SizedBox(height: 5),
                  Text(
                    widget.coinEntity.currentPrice.moneyFull,
                    style: AppStyles.normal14,
                  ),
                ],
              ),
              holdings: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.coinEntity.holdingsValue.moneyFull,
                    style: AppStyles.bold14,
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(widget.coinEntity.iconData, color: widget.coinEntity.color, size: 14),
                      Text(
                        ' ${widget.coinEntity.percentageDifference.percentageToString} % '
                        '(${widget.coinEntity.dollarDifference.moneyFull})',
                        style: AppStyles.bold14.copyWith(color: widget.coinEntity.color),
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
                  size: 40,
                ),
              ),
            ),
            openDetails ? _PortfolioCoinWidgetDetails(widget.coinEntity) : SizedBox()
          ],
        ),
      ),
    );
  }
}

class _PortfolioCoinWidgetDetails extends StatelessWidget {
  final CoinEntity coinEntity;

  _PortfolioCoinWidgetDetails(this.coinEntity);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 15),
        _PortfolioPageRow(
          name: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coinEntity.averageNetCost.moneyFull,
                style: AppStyles.bold14,
              ),
              SizedBox(height: 5),
              Text(
                context.localization.averageNetCost,
                style: AppStyles.normal12,
              ),
            ],
          ),
          holdings: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                coinEntity.totalCost.moneyFull,
                style: AppStyles.bold14,
              ),
              SizedBox(height: 5),
              Text(
                context.localization.totalCost,
                style: AppStyles.normal12,
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
              padding: const EdgeInsets.all(7.5),
              child: Icon(
                Icons.add,
                size: 25,
              ),
            ),
          ),
        ),
      ],
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
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          flex: 2,
          child: Align(
            child: coin,
          ),
        ),
        Expanded(
          flex: 5,
          child: Align(
            alignment: Alignment.centerLeft,
            child: name,
          ),
        ),
        Expanded(
          flex: 10,
          child: Align(
            alignment: Alignment.centerRight,
            child: holdings,
          ),
        ),
        Expanded(
          flex: 2,
          child: Align(
            child: button,
          ),
        ),
        SizedBox(width: 10),
      ],
    );
  }
}
