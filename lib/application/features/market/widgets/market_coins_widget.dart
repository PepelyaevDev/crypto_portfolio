import 'package:crypto_portfolio/application/app/utils/context_extension.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class MarketCoinsWidget extends StatelessWidget {
  final CoinsEntity coins;
  const MarketCoinsWidget({required this.coins});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          _MarketPageRow(
            coinWidget: Text(context.localization.coin),
            price: context.localization.price,
            marketCap: context.localization.marketCap,
          ),
          SizedBox(height: 15),
          Expanded(
            child: ListView.separated(
              itemBuilder: (_, i) => _MarketPageRow(
                index: i + 1,
                coinWidget: Column(
                  children: [
                    Image.network(coins.list[i].image, width: 20, height: 20),
                    Text(coins.list[i].symbol.toString()),
                  ],
                ),
                price: coins.list[i].currentPrice.toString(),
                marketCap: coins.list[i].marketCap.toString(),
              ),
              separatorBuilder: (_, __) => Divider(height: 20),
              itemCount: coins.list.length,
            ),
          ),
        ],
      ),
    );
  }
}

class _MarketPageRow extends StatelessWidget {
  final int? index;
  final Widget coinWidget;
  final String price;
  final String marketCap;

  const _MarketPageRow({
    this.index,
    required this.coinWidget,
    required this.price,
    required this.marketCap,
  });
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: Center(child: index == null ? null : Text(index.toString()))),
        Expanded(flex: 2, child: Center(child: coinWidget)),
        Expanded(flex: 3, child: Text(price, textAlign: TextAlign.right)),
        Expanded(flex: 4, child: Text(marketCap, textAlign: TextAlign.right)),
      ],
    );
  }
}
