import 'dart:async';

import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/features/detail_coin/bloc/detail_portfolio_coin_bloc'
    '/detail_portfolio_coin_bloc.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/portfolio_widgets/empty_potrfolio_coin_widget.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/portfolio_widgets/payment_history_widget.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/portfolio_widgets/detail_portfolio_stat_widget.dart';
import 'package:crypto_portfolio/application/features/portfolio/pages/add_payment_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPortfolioCoinWidget extends StatelessWidget {
  final CoinId id;

  const DetailPortfolioCoinWidget(this.id);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailPortfolioCoinBloc(context.read<PortfolioRepo>(), id)
        ..add(DetailPortfolioCoinEvent.refreshData()),
      child: Builder(builder: (context) {
        return RefreshIndicator(
          onRefresh: () async {
            final completer = Completer<void>();
            context.read<DetailPortfolioCoinBloc>().add(
                  DetailPortfolioCoinEvent.refreshData(completer: completer),
                );
            await completer.future;
          },
          child: BlocConsumer<DetailPortfolioCoinBloc, DetailPortfolioCoinState>(
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
                return EmptyPortfolioCoinWidget(id: id);
              }
              return ListView(
                children: [
                  DetailPortfolioStatWidget(
                    coin: state.coin!,
                    loading: state.loading,
                    onTapUpdate: () {
                      context
                          .read<DetailPortfolioCoinBloc>()
                          .add(DetailPortfolioCoinEvent.refreshData());
                    },
                  ),
                  SizedBox(height: 10),
                  PaymentHistoryWidget(
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
                          .read<DetailPortfolioCoinBloc>()
                          .add(DetailPortfolioCoinEvent.deletePayment(payment));
                    },
                    onTapDeleteAll: () {
                      context
                          .read<DetailPortfolioCoinBloc>()
                          .add(DetailPortfolioCoinEvent.deleteCoin(state.coin!.id));
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
