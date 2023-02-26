import 'package:crypto_portfolio/application/features/market/bloc/market_coins_bloc.dart';
import 'package:crypto_portfolio/domain/repo/coins_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarketCoinsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MarketCoinsBloc(context.read<CoinsRepo>())
        ..add(
          MarketCoinsEvent.refreshData(),
        ),
      child: BlocConsumer<MarketCoinsBloc, MarketCoinsState>(
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
            body: Center(child: Text(state.coins.updateTime.toString())),
          );
        },
      ),
    );
  }
}
