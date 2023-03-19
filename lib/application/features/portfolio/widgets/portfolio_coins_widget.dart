import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/app/widgets/coingecko_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';

class PortfolioCoinsWidget extends StatelessWidget {
  final CoinsEntity coins;
  const PortfolioCoinsWidget({required this.coins});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.blue, blurRadius: 5.0),
            ],
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 5),
            child: Column(
              children: [
                _PortfolioPageRow(
                  coinWidget: SizedBox(height: 0, width: 0),
                  currentPrice: context.localization.currentPrice,
                  averagePrice: context.localization.averagePrice,
                  moneyInvested: context.localization.invested,
                  priceAllCoins: context.localization.priceOfAllCoins,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: ListView.separated(
              itemBuilder: (_, i) => _PortfolioPageRow(
                coinWidget: Column(
                  children: [
                    Image.network(coins.list[i].image, width: 20, height: 20),
                    Text(coins.list[i].symbol.toString()),
                  ],
                ),
                currentPrice: coins.list[i].currentPrice.moneyFull,
                averagePrice: coins.list[i].averagePrice.moneyFull,
                moneyInvested: coins.list[i].moneyInvested.moneyFull,
                priceAllCoins: coins.list[i].priceAllCoins.moneyFull,
                history: coins.list[i].history,
              ),
              separatorBuilder: (_, __) => Divider(height: 10),
              itemCount: coins.list.length,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1.0),
            ],
          ),
          child: CoinGeckoWidget(),
        ),
      ],
    );
  }
}

class _PortfolioPageRow extends StatefulWidget {
  final Widget coinWidget;
  final String currentPrice;
  final String averagePrice;
  final String moneyInvested;
  final String priceAllCoins;
  final List<PaymentEntity>? history;

  const _PortfolioPageRow({
    required this.coinWidget,
    required this.currentPrice,
    required this.averagePrice,
    required this.moneyInvested,
    required this.priceAllCoins,
    this.history,
  });

  @override
  State<_PortfolioPageRow> createState() => _PortfolioPageRowState();
}

class _PortfolioPageRowState extends State<_PortfolioPageRow> {
  ///TODO: show history
  bool closeHistory = true;

  onTap() {
    setState(() {
      closeHistory = !closeHistory;
    });
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.history == null ? null : onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                _RowElement(child: widget.coinWidget, flex: 1),
                _RowElement(child: Text(widget.currentPrice, textAlign: TextAlign.center)),
                _RowElement(child: Text(widget.averagePrice, textAlign: TextAlign.center)),
                _RowElement(child: Text(widget.moneyInvested, textAlign: TextAlign.center)),
                _RowElement(child: Text(widget.priceAllCoins, textAlign: TextAlign.center)),
              ],
            ),
            closeHistory ? SizedBox(height: 0, width: 0) : Container(height: 100),
          ],
        ),
      ),
    );
  }
}

class _RowElement extends StatelessWidget {
  final Widget child;
  final int flex;

  const _RowElement({required this.child, this.flex = 2});
  @override
  Widget build(BuildContext context) {
    return Expanded(flex: flex, child: Center(child: child));
  }
}
