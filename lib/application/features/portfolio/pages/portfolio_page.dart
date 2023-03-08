import 'package:crypto_portfolio/application/app/bloc/coins_bloc/coins_bloc.dart';
import 'package:crypto_portfolio/application/app/widgets/update_data_appbar.dart';
import 'package:crypto_portfolio/application/features/portfolio/widgets/portfolio_coins_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CoinsBloc, CoinsState>(
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
              context.read<CoinsBloc>().add(CoinsEvent.refreshData());
            },
          ),
          body: Padding(
            padding: const EdgeInsets.all(15.0),
            child: SafeArea(
              child: Column(
                children: [
                  SizedBox(height: 10),
                  PortfolioCoinsWidget(coinsEntity: state.coins),
                  SizedBox(height: 15),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
