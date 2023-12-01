import 'package:crypto_portfolio/common/design_system/custom_widgets/primary_container.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/presentation/detail_coin/bloc/market_coin_bloc/market_coin_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarketCoinStat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarketCoinBloc, MarketCoinState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: PrimaryContainer(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 10),
              child: Column(
                children: [
                  _MarketStatRow(
                    context.localization.marketCapRank,
                    state.coin?.marketCapRank?.compactLong(context.localization.localeName) ??
                        emptyString,
                  ),
                  Divider(height: 30),
                  _MarketStatRow(
                    context.localization.marketCap,
                    state.coin?.marketCap.moneyFull ?? emptyString,
                  ),
                  Divider(height: 30),
                  _MarketStatRow(
                    context.localization.circulatingSupply,
                    state.coin?.circulatingSupply?.compactLong(context.localization.localeName) ??
                        emptyString,
                  ),
                  Divider(height: 30),
                  _MarketStatRow(
                    context.localization.totalSupply,
                    state.coin?.totalSupply?.compactLong(context.localization.localeName) ??
                        emptyString,
                  ),
                  Divider(height: 30),
                  _MarketStatRow(
                    context.localization.maxSupply,
                    state.coin?.maxSupply?.compactLong(context.localization.localeName) ??
                        emptyString,
                  ),
                  Divider(height: 30),
                  _MaxMinPriceWidget(
                    title: context.localization.ath,
                    price: state.coin?.ath,
                    changePercentage: state.coin?.athChangePercentage,
                    date: state.coin?.athDate,
                  ),
                  Divider(height: 30),
                  _MaxMinPriceWidget(
                    title: context.localization.atl,
                    price: state.coin?.atl,
                    changePercentage: state.coin?.atlChangePercentage,
                    date: state.coin?.atlDate,
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class _MaxMinPriceWidget extends StatelessWidget {
  final String title;
  final double? price;
  final double? changePercentage;
  final String? date;

  const _MaxMinPriceWidget({
    required this.title,
    required this.price,
    required this.changePercentage,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 1,
          child: Text(
            title,
            style: context.styles.bodySmall,
            maxLines: 2,
            softWrap: true,
          ),
        ),
        Expanded(
          flex: 2,
          child: showValue
              ? Builder(
                  builder: (_) {
                    final Color color;
                    final IconData icon;
                    if (changePercentage! < 0) {
                      color = context.colors.error;
                      icon = Icons.arrow_drop_down;
                    } else {
                      color = context.colors.secondary;
                      icon = Icons.arrow_drop_up;
                    }
                    return Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text(
                              price!.moneyFull,
                              style: context.styles.labelSmall,
                            ),
                            SizedBox(width: 5),
                            Icon(icon, color: color),
                            Text(
                              '${changePercentage!.abs().toStringAsFixed(2)}%',
                              style: context.styles.labelSmall!.copyWith(color: color),
                            ),
                          ],
                        ),
                        Text(
                          DateTime.parse(date!).dateLong(context),
                          style: context.styles.labelSmall,
                        ),
                      ],
                    );
                  },
                )
              : SizedBox(),
        ),
      ],
    );
  }

  bool get showValue => price != null && changePercentage != null && date != null;
}

class _MarketStatRow extends StatelessWidget {
  final String title;
  final String content;
  _MarketStatRow(this.title, this.content);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: context.styles.bodySmall,
        ),
        Text(
          content,
          style: context.styles.labelSmall,
        ),
      ],
    );
  }
}
