import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
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
                            coins.list[i].symbol.toString().toUpperCase(),
                            style: AppStyles.bold14,
                          ),
                          SizedBox(height: 2),
                          Text(
                            coins.list[i].marketCap.moneyCompact,
                            style: AppStyles.normal12.copyWith(color: AppColors.grayDark),
                          ),
                        ],
                      ),
                    ],
                  ),
                  price: Text(
                    coins.list[i].currentPrice.moneyFull,
                    style: AppStyles.bold14,
                  ),
                  changes: Builder(builder: (context) {
                    final Color color;
                    final IconData icon;
                    if (coins.list[i].priceChangePercentage24H < 0) {
                      color = AppColors.redLight;
                      icon = Icons.arrow_drop_down;
                    } else {
                      color = AppColors.greenLight;
                      icon = Icons.arrow_drop_up;
                    }
                    return Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Icon(icon, color: color),
                        Text(
                          '${coins.list[i].priceChangePercentage24H.toStringAsFixed(2)} %',
                          style: AppStyles.bold14.copyWith(color: color),
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
            color: AppColors.white,
            boxShadow: [
              BoxShadow(color: AppColors.grey, blurRadius: 1.0),
            ],
          ),
          child: Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: CoinGeckoWidget(),
            ),
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
  final double verticalPaddings;

  const MarketPageRow({
    this.index,
    required this.marketCap,
    required this.price,
    required this.changes,
    this.verticalPaddings = 15,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        right: 15,
        bottom: verticalPaddings,
        top: verticalPaddings,
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Align(
              child: index,
            ),
          ),
          Expanded(
            flex: 5,
            child: Align(
              alignment: Alignment.centerLeft,
              child: marketCap,
            ),
          ),
          Expanded(
            flex: 5,
            child: Align(
              alignment: Alignment.centerRight,
              child: price,
            ),
          ),
          Expanded(
            flex: 5,
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
