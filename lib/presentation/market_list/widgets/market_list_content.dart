import 'package:crypto_portfolio/common/design_system/cards/market_data_card.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/presentation/detail_coin/page/detail_coin_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class MarketListContent extends StatelessWidget {
  final CoinsEntity coins;
  const MarketListContent({required this.coins});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemBuilder: (_, i) => InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DetailCoinPage(
                coinLogo: coins.list[i].image,
                id: coins.list[i].id,
              ),
            ),
          );
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: MarketDataCard(
            index: Text(
              (i + 1).toString(),
              style: context.styles.labelSmall,
            ),
            marketCap: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  coins.list[i].image,
                  width: 20,
                  height: 20,
                  errorBuilder: (_, __, ___) => SizedBox(),
                ),
                SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      coins.list[i].id.symbol.toString(),
                      style: context.styles.labelSmall,
                    ),
                    Text(
                      coins.list[i].marketCap.moneyCompact,
                      style: context.styles.bodySmall,
                    ),
                  ],
                ),
              ],
            ),
            price: Text(
              coins.list[i].currentPrice.moneyFull,
              style: context.styles.labelSmall,
            ),
            changes: Builder(builder: (context) {
              final Color color;
              final IconData icon;
              if (coins.list[i].priceChangePercentage24H < 0) {
                color = context.colors.error;
                icon = Icons.arrow_drop_down;
              } else {
                color = context.colors.secondary;
                icon = Icons.arrow_drop_up;
              }
              return Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(icon, color: color),
                  Text(
                    '${coins.list[i].priceChangePercentage24H.toStringAsFixed(2)} %',
                    style: context.styles.labelSmall!.copyWith(color: color),
                  ),
                ],
              );
            }),
          ),
        ),
      ),
      separatorBuilder: (_, __) => Divider(),
      itemCount: coins.list.length,
    );
  }
}
