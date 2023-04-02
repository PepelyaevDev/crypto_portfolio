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
      create: (context) => MarketBloc(context.read<MarketRepo>())
        ..add(
          MarketEvent.refreshData(),
        ),
      child: Builder(
        builder: (context) {
          return BlocConsumer<MarketBloc, MarketState>(
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
                    context.read<MarketBloc>().add(MarketEvent.refreshData());
                  },
                ),
                body: MarketCoinsWidget(coins: state.coins),
              );
            },
          );
        },
      ),
    );
  }
}
