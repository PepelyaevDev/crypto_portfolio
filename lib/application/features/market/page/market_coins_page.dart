import 'package:crypto_portfolio/application/app/bloc/coins_bloc/coins_bloc.dart';
import 'package:crypto_portfolio/application/features/market/widgets/market_coins_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
          appBar: AppBar(
            ///TODO: add localization
            title: Text('Updated: ${state.coins.updateTime.hour}:${state.coins.updateTime.minute}'),
            actions: [
              if (state.loading)
                Padding(
                  padding: const EdgeInsets.only(right: 15.0),
                  child: Center(
                    child: SizedBox(
                      height: 15,
                      width: 15,
                      child: CircularProgressIndicator(
                        color: Colors.white,
                        strokeWidth: 2,
                      ),
                    ),
                  ),
                )
              else
                IconButton(
                  onPressed: () {
                    context.read<CoinsBloc>().add(CoinsEvent.refreshData());
                  },
                  icon: Icon(Icons.refresh),
                )
            ],
          ),
          body: MarketCoinsWidget(
            coins: state.coins,
          ),
        );
      },
    );
  }
}
