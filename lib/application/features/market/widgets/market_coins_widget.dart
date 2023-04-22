import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/coingecko_widget.dart';
import 'package:crypto_portfolio/application/features/detail_coin/page/detail_coin_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class MarketCoinsWidget extends StatelessWidget {
  final CoinsEntity coins;
  const MarketCoinsWidget({required this.coins});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemBuilder: (_, i) => Padding(
              padding: EdgeInsets.only(
                top: i == 0 ? 8 : 0,
              ),
              child: InkWell(
                onTap: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => DetailCoinPage(
                        coinLogo: coins.list[i].image,
                        coinSymbol: coins.list[i].symbol,
                        coinId: coins.list[i].id,
                      ),
                    ),
                  );
                },
                child: MarketPageRow(
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
                  changes: Builder(builder: (context) {
                    final Color color;
                    final IconData icon;
                    if (coins.list[i].priceChangePercentage24H < 0) {
                      color = Colors.red;
                      icon = Icons.arrow_drop_down;
                    } else {
                      color = Colors.green;
                      icon = Icons.arrow_drop_up;
                    }
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(icon, color: color),
                        Text(
                          '${coins.list[i].priceChangePercentage24H.toStringAsFixed(2)} %',
                          style: AppStyles.bold12.copyWith(color: color),
                        ),
                      ],
                    );
                  }),
                ),
              ),
            ),
            separatorBuilder: (_, __) => Divider(height: 2),
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

class MarketPageRow extends StatelessWidget {
  final Widget? index;
  final Widget marketCap;
  final Widget price;
  final Widget changes;

  const MarketPageRow({
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
