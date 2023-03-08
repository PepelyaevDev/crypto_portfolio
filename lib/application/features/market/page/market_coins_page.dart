import 'package:crypto_portfolio/application/app/bloc/coins_bloc/coins_bloc.dart';
import 'package:crypto_portfolio/application/app/widgets/update_data_appbar.dart';
import 'package:crypto_portfolio/application/features/market/widgets/market_coins_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarketCoinsPage extends StatelessWidget {
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
          body: MarketCoinsWidget(
            coins: state.coins,
          ),
        );
      },
    );
  }
}
