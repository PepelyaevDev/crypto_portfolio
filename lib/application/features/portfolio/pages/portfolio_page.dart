import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/ui/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/ui/widgets/refresh_icon_button.dart';
import 'package:crypto_portfolio/application/app/ui/widgets/update_data_appbar.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/pages/add_payment_page.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/empty_portfolio_widget.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/portfolio_coins_widget.dart';
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
          create: (context) => PortfolioBloc(context.read<PortfolioRepo>())
            ..add(PortfolioEvent.init())
            ..add(PortfolioEvent.refreshData()),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocConsumer<PortfolioBloc, PortfolioState>(
          listener: (context, state) {
            String? snackBarContent;
            Color? color;
            if (state.error != null) {
              snackBarContent = state.error!;
              color = Colors.red;
            }
            if (state.error == null && !state.loading) {
              snackBarContent = context.localization.updated;
              color = Colors.green;
            }
            if (snackBarContent != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  backgroundColor: color,
                  content: Text(snackBarContent),
                  duration: Duration(milliseconds: 800),
                ),
              );
            }
          },
          builder: (context, portfolioState) {
            return SafeArea(
              child: Scaffold(
                appBar: CustomAppBar(
                  rightWidget: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
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
                ),
                body: portfolioState.coins.list.isEmpty
                    ? EmptyPortfolioWidget()
                    : PortfolioCoinsWidget(coins: portfolioState.coins),
              ),
            );
          },
        );
      }),
    );
  }
}
