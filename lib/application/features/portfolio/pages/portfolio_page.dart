import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/refresh_icon_button.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/pages/add_payment_page.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/empty_portfolio_widget.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/portfolio_coins_widget.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
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
                error: state.error != null,
                errorInfo: state.error?.getMessage(context),
              );
            }
          },
          builder: (context, portfolioState) {
            return Scaffold(
              appBar: AppBar(
                shadowColor: AppColors.primary,
                backgroundColor: AppColors.white,
                foregroundColor: AppColors.blackLight,
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
                  RefreshIconButton(
                    loading: portfolioState.loading,
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
                        context.read<PortfolioBloc>().add(PortfolioEvent.refreshData());
                        return;
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
