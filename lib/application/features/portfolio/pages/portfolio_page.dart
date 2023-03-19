import 'package:crypto_portfolio/application/app/widgets/update_data_appbar.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/portfolio_bloc.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/portfolio_coins_widget.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PortfolioBloc(context.read<PortfolioRepo>())
        ..add(
          PortfolioEvent.refreshData(),
        ),
      child: Builder(builder: (context) {
        return BlocConsumer<PortfolioBloc, PortfolioState>(
          listener: (context, state) {
            if (state.error != null) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(state.error!),
                  duration: Duration(milliseconds: 800),
                ),
              );
            }
          },
          builder: (context, state) {
            return Scaffold(
              appBar: UpdateDataAppBar(
                loading: state.loading,
                updateTime: state.coins.updateTime,
                onTapUpdate: () {
                  context.read<PortfolioBloc>().add(PortfolioEvent.refreshData());
                },
              ),
              body: PortfolioCoinsWidget(
                coins: state.coins,
              ),
            );
          },
        );
      }),
    );
  }
}
