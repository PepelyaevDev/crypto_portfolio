import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/ui/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/ui/widgets/refresh_icon_button.dart';
import 'package:crypto_portfolio/application/app/ui/widgets/update_data_appbar.dart';
import 'package:crypto_portfolio/application/features/market/bloc/market_bloc.dart';
import 'package:crypto_portfolio/application/features/market/widgets/market_coins_widget.dart';
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
              String? snackBarContent;
              if (state.error != null) {
                snackBarContent = state.error!;
              }
              if (state.error == null && !state.loading) {
                snackBarContent = context.localization.updated;
              }
              if (snackBarContent != null) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(snackBarContent),
                    duration: Duration(milliseconds: 800),
                  ),
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
                        changes: SizedBox(),
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
