import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/presentation/stable_coins/bloc/stable_bloc.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/portfolio_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class StablePercentWidget extends StatefulWidget {
  final CoinsEntity portfolioCoins;
  const StablePercentWidget(this.portfolioCoins);

  @override
  State<StablePercentWidget> createState() => _StablePercentWidgetState();
}

class _StablePercentWidgetState extends State<StablePercentWidget> {
  @override
  void initState() {
    context.read<StableBloc>().add(StableEvent.refresh());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<StableBloc, StableState>(
      builder: (context, state) {
        return switch (state) {
          StableSuccess _ => _SuccessStablePercentWidget(
              portfolioCoins: widget.portfolioCoins,
              stableCoins: state.coins,
            ),
          _ => SizedBox.shrink(),
        };
      },
    );
  }
}

class _SuccessStablePercentWidget extends StatelessWidget {
  final CoinsEntity portfolioCoins;
  final CoinsEntity stableCoins;

  const _SuccessStablePercentWidget({
    required this.portfolioCoins,
    required this.stableCoins,
  });
  @override
  Widget build(BuildContext context) {
    double stableAmount = 0;
    for (var e in portfolioCoins.list) {
      if (stableCoins.list.where((stable) => stable.id == e.id).isNotEmpty) {
        stableAmount = stableAmount.addNumber(e.holdingsValue);
      }
    }
    final double stablePercent = stableAmount / portfolioCoins.holdingsValue;
    return Column(
      children: [
        if (stableAmount > 0)
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: ClipRRect(
              borderRadius: BorderRadius.all(Radius.circular(5)),
              child: LinearProgressIndicator(
                value: stablePercent,
                minHeight: 20,
                color: AppColors.primary,
                backgroundColor: AppColors.grayMedium,
              ),
            ),
          ),
        Text(
          '${context.localization.percentageStablecoins}: ${(stablePercent * 100).toStringAsFixed(2)}%',
          style: AppStyles.normal14,
        ),
      ],
    );
  }
}
