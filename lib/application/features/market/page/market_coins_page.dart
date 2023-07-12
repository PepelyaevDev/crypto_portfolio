import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/logo_widget.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/refresh_icon_button.dart';
import 'package:crypto_portfolio/application/features/market/bloc/market_bloc.dart';
import 'package:crypto_portfolio/application/features/market/widgets/market_coins_widget.dart';
import 'package:crypto_portfolio/application/features/search/page/search_page.dart';
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
              return Scaffold(
                appBar: AppBar(
                  shadowColor: AppColors.primary,
                  backgroundColor: AppColors.white,
                  foregroundColor: AppColors.blackLight,
                  title: LogoWidget(),
                  centerTitle: true,
                  actions: [
                    AppBarIconButton(
                      iconData: Icons.search,
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (_) => SearchPage(),
                          ),
                        );
                      },
                    ),
                    RefreshIconButton(
                      loading: state.loading,
                      onTapUpdate: () {
                        context.read<MarketBloc>().add(MarketEvent.refreshData());
                      },
                    ),
                  ],
                  bottom: PreferredSize(
                    child: MarketPageRow(
                      marketCap: Text(
                        context.localization.marketCap,
                        style: AppStyles.normal14,
                      ),
                      price: Text(
                        context.localization.price,
                        style: AppStyles.normal14,
                      ),
                      changes: Text(
                        context.localization.percentage24h,
                        style: AppStyles.normal14,
                      ),
                      verticalPaddings: 10,
                    ),
                    preferredSize: Size(double.infinity, 35),
                  ),
                ),
                body: RefreshIndicator(
                  onRefresh: () async {
                    context.read<MarketBloc>().add(MarketEvent.refreshData());
                    return;
                  },
                  child: MarketCoinsWidget(coins: state.coins),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
