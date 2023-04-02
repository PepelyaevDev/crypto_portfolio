import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/app/ui/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/ui/widgets/coingecko_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class MarketCoinsWidget extends StatelessWidget {
  final CoinsEntity coins;
  const MarketCoinsWidget({required this.coins});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.blue, blurRadius: 2.0),
            ],
          ),
          child: Column(
            children: [
              _MarketPageRow(
                marketCap: Text(
                  context.localization.marketCap,
                  style: AppStyles.normal12,
                ),
                price: Text(
                  context.localization.price,
                  style: AppStyles.normal12,
                ),
                changes: SizedBox(),
              ),
            ],
          ),
        ),
        SizedBox(height: 5),
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, i) => _MarketPageRow(
              index: Text(
                (i + 1).toString(),
                style: AppStyles.normal14,
              ),
              marketCap: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Image.network(coins.list[i].image, width: 20, height: 20),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        coins.list[i].symbol.toString().toUpperCase(),
                        style: AppStyles.bold12,
                      ),
                      SizedBox(height: 3),
                      Text(
                        coins.list[i].marketCap.moneyCompact,
                        style: AppStyles.normal12,
                      ),
                    ],
                  ),
                ],
              ),
              price: Text(
                coins.list[i].currentPrice.moneyFull,
                style: AppStyles.bold12,
              ),
              changes: SizedBox(),
            ),
            separatorBuilder: (_, __) => Divider(height: 1),
            itemCount: coins.list.length,
          ),
        ),
        Ink(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(color: Colors.grey, blurRadius: 1.0),
            ],
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: CoinGeckoWidget(),
          ),
        ),
      ],
    );
  }
}

class _MarketPageRow extends StatelessWidget {
  final Widget? index;
  final Widget marketCap;
  final Widget price;
  final Widget changes;

  const _MarketPageRow({
    this.index,
    required this.marketCap,
    required this.price,
    required this.changes,
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
              child: index,
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerLeft,
              child: marketCap,
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerRight,
              child: price,
            ),
          ),
          Expanded(
            flex: 3,
            child: Align(
              alignment: Alignment.centerRight,
              child: changes,
            ),
          ),
        ],
      ),
    );
  }
}
