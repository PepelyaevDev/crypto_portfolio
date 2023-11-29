import 'package:crypto_portfolio/common/design_system/custom_widgets/primary_container.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
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
                ],
              ),
            ),
          ),
        );
      },
    );
  }
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
