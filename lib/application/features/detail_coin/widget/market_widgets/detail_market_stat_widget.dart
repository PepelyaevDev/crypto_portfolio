import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/consts.dart';
import 'package:crypto_portfolio/application/app/design_system/core/decorations.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/features/detail_coin/bloc/market_coin_bloc/market_coin_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailMarketStatWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarketCoinBloc, MarketCoinState>(
      builder: (context, state) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            decoration: AppDecorations.blueBorderDecoration,
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
          style: AppStyles.normal12.copyWith(color: AppColors.grayDark),
        ),
        Text(
          content,
          style: AppStyles.normal12.copyWith(color: AppColors.blackLight),
        ),
      ],
    );
  }
}
