import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/features/detail_coin/bloc/detail_portfolio_coin_bloc'
    '/detail_portfolio_coin_bloc.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/empty_potrfolio_coin_widget.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';

class DetailPortfolioCoinWidget extends StatelessWidget {
  final String coinId;

  const DetailPortfolioCoinWidget(this.coinId);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => DetailPortfolioCoinBloc(context.read<PortfolioRepo>(), coinId)
        ..add(DetailPortfolioCoinEvent.refreshData()),
      child: Builder(builder: (context) {
        return BlocConsumer<DetailPortfolioCoinBloc, DetailPortfolioCoinState>(
          listener: (context, state) {
            if (!state.loading) {
              UpdateDataSnackBar.show(
                context: context,
                error: state.error != null,
                errorInfo: state.error?.getMessage(context),
              );
            }
          },
          builder: (context, state) {
            if (state.coin == null) {
              return EmptyPortfolioCoinWidget(coinId: coinId);
            }
            return Center(
              child: Text(
                'portfolio info',
              ),
            );
          },
        );
      }),
    );
  }
}
