import 'package:crypto_portfolio/application/app/ui/widgets/update_data_appbar.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/portfolio_bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/portfolio_coins_loading_bloc/portfolio_coins_loading_bloc.dart';
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
          create: (context) => PortfolioCoinsLoadingBloc(context.read<PortfolioRepo>())
            ..add(PortfolioCoinsLoadingEvent.init()),
        ),
        BlocProvider(
          create: (context) => PortfolioBloc(context.read<PortfolioRepo>())
            ..add(PortfolioEvent.init())
            ..add(PortfolioEvent.refreshData()),
        ),
      ],
      child: Builder(builder: (context) {
        return BlocBuilder<PortfolioCoinsLoadingBloc, bool>(
          builder: (context, loadingState) {
            return BlocConsumer<PortfolioBloc, PortfolioState>(
              listener: (context, portfolioState) {
                if (portfolioState.error != null) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text(portfolioState.error!),
                      duration: Duration(milliseconds: 800),
                    ),
                  );
                }
              },
              builder: (context, portfolioState) {
                return Scaffold(
                  ///TODO: иконка плюса на добавление платежа
                  appBar: UpdateDataAppBar(
                    loading: loadingState,
                    updateTime: portfolioState.coins.updateTime,
                    onTapUpdate: () {
                      context.read<PortfolioBloc>().add(PortfolioEvent.refreshData());
                    },
                  ),
                  body: portfolioState.coins.list.isEmpty
                      ? EmptyPortfolioWidget()
                      : PortfolioCoinsWidget(coins: portfolioState.coins),
                );
              },
            );
          },
        );
      }),
    );
  }
}
