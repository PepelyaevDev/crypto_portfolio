import 'dart:async';

import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/presentation/detail_coin/bloc/portfolio_coin_bloc/portfolio_coin_bloc.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/potrfolio_coin_empty.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/portfolio_coin_history/portfolio_coin_history.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/portfolio_widgets/portfolio_coin_stat.dart';
import 'package:crypto_portfolio/presentation/portfolio/pages/add_payment_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioCoinContent extends StatelessWidget {
  final CoinId id;

  const PortfolioCoinContent(this.id);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PortfolioCoinBloc(context.read<PortfolioRepo>(), id)
        ..add(PortfolioCoinEvent.refreshData()),
      child: Builder(builder: (context) {
        return RefreshIndicator(
          onRefresh: () async {
            final completer = Completer<void>();
            context.read<PortfolioCoinBloc>().add(
                  PortfolioCoinEvent.refreshData(completer: completer),
                );
            await completer.future;
          },
          child: BlocConsumer<PortfolioCoinBloc, PortfolioCoinState>(
            listener: (context, state) {
              if (!state.loading) {
                UpdateDataSnackBar.show(
                  context: context,
                  error: state.error,
                );
              }
            },
            builder: (context, state) {
              if (state.coin == null) {
                return PortfolioCoinEmpty(id: id);
              }
              return ListView(
                children: [
                  PortfolioCoinStat(
                    coin: state.coin!,
                    loading: state.loading,
                    onTapUpdate: () {
                      context.read<PortfolioCoinBloc>().add(PortfolioCoinEvent.refreshData());
                    },
                  ),
                  SizedBox(height: 10),
                  PortfolioCoinHistory(
                    coin: state.coin!,
                    onTapAdd: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                          builder: (_) => AddPaymentPage(
                            id: id,
                          ),
                        ),
                      );
                    },
                    onTapDelete: (PaymentEntity payment) {
                      context
                          .read<PortfolioCoinBloc>()
                          .add(PortfolioCoinEvent.deletePayment(payment));
                    },
                    onTapDeleteAll: () {
                      context
                          .read<PortfolioCoinBloc>()
                          .add(PortfolioCoinEvent.deleteCoin(state.coin!.id));
                    },
                  ),
                  SizedBox(height: 30),
                ],
              );
            },
          ),
        );
      }),
    );
  }
}
