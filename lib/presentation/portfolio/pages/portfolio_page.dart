import 'dart:async';

import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/logo_widget.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/common/design_system/buttons/refresh_icon_button.dart';
import 'package:crypto_portfolio/presentation/portfolio/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/presentation/portfolio/pages/add_payment_page.dart';
import 'package:crypto_portfolio/presentation/portfolio/widgets/empty_portfolio_widget.dart';
import 'package:crypto_portfolio/presentation/portfolio/widgets/portfolio_coins_widget.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) =>
              PortfolioBloc(context.read<PortfolioRepo>())..add(PortfolioEvent.refreshData()),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocConsumer<PortfolioBloc, PortfolioState>(
          listener: (context, state) {
            if (!state.loading) {
              UpdateDataSnackBar.show(
                context: context,
                error: state.error,
              );
            }
          },
          builder: (context, portfolioState) {
            return Scaffold(
              appBar: AppBar(
                shadowColor: AppColors.primary,
                backgroundColor: AppColors.white,
                foregroundColor: AppColors.blackLight,
                title: LogoWidget(),
                centerTitle: true,
                actions: [
                  AppBarIconButton(
                    iconData: Icons.add,
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => AddPaymentPage(),
                        ),
                      );
                    },
                  ),
                  RefreshButton(
                    loading: portfolioState.loading,
                    backgroundColor: RefreshButtonBackground.surface,
                    onTapUpdate: () {
                      context.read<PortfolioBloc>().add(PortfolioEvent.refreshData());
                    },
                  ),
                ],
              ),
              body: portfolioState.coins.list.isEmpty
                  ? EmptyPortfolioWidget()
                  : RefreshIndicator(
                      onRefresh: () async {
                        final completer = Completer<void>();
                        context.read<PortfolioBloc>().add(
                              PortfolioEvent.refreshData(completer: completer),
                            );
                        await completer.future;
                      },
                      child: PortfolioCoinsWidget(coins: portfolioState.coins),
                    ),
            );
          },
        );
      }),
    );
  }
}
