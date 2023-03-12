import 'package:crypto_portfolio/application/app/utils/context_extension.dart';
import 'package:crypto_portfolio/application/app/utils/double_extension.dart';
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

class _PortfolioPageRow extends StatelessWidget {
  final Widget coinWidget;
  final String currentPrice;
  final String averagePrice;
  final String moneyInvested;
  final String priceAllCoins;

  const _PortfolioPageRow({
    required this.coinWidget,
    required this.currentPrice,
    required this.averagePrice,
    required this.moneyInvested,
    required this.priceAllCoins,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          _RowElement(child: coinWidget, flex: 1),
          _RowElement(child: Text(currentPrice, textAlign: TextAlign.center)),
          _RowElement(child: Text(averagePrice, textAlign: TextAlign.center)),
          _RowElement(child: Text(moneyInvested, textAlign: TextAlign.center)),
          _RowElement(child: Text(priceAllCoins, textAlign: TextAlign.center)),
        ],
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
