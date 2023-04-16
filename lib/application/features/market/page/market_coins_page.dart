import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/app/utils/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/refresh_icon_button.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_appbar.dart';
import 'package:crypto_portfolio/application/features/market/bloc/market_bloc.dart';
import 'package:crypto_portfolio/application/features/market/widgets/market_coins_widget.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarketCoinsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MarketBloc(context.read<MarketRepo>())..add(MarketEvent.refreshData()),
      child: Builder(
        builder: (context) {
          return BlocConsumer<MarketBloc, MarketState>(
            listener: (context, state) {
              if (!state.loading) {
                UpdateDataSnackBar.show(
                  context: context,
                  error: state.error != null,
                  errorInfo: state.error?.getMessage(context),
                );
              }
            },
            builder: (context, state) {
              return SafeArea(
                child: Scaffold(
                  appBar: CustomAppBar(
                    rightWidget: RefreshIconButton(
                      loading: state.loading,
                      onTapUpdate: () {
                        context.read<MarketBloc>().add(MarketEvent.refreshData());
                      },
                    ),
                    bottomAppbarWidget: BottomAppbarWidget(
                      child: MarketPageRow(
                        marketCap: Text(
                          context.localization.marketCap,
                          style: AppStyles.normal12,
                        ),
                        price: Text(
                          context.localization.price,
                          style: AppStyles.normal12,
                        ),
                        changes: Text(
                          context.localization.percentage24h,
                          style: AppStyles.normal12,
                        ),
                      ),
                      height: 40,
                    ),
                  ),
                  body: MarketCoinsWidget(coins: state.coins),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
