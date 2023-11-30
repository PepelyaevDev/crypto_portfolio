import 'dart:async';

import 'package:crypto_portfolio/common/design_system/custom_widgets/logo_widget.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/common/design_system/buttons/refresh_icon_button.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/bloc/portfolio_list_bloc/portfolio_list_bloc.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/pages/add_payment_page.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/widgets/portfolio_list_empty.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/widgets/portfolio_list_content.dart';
import 'package:crypto_portfolio/domain/repo/portfolio_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PortfolioListPage extends StatelessWidget {
  const PortfolioListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PortfolioListBloc(context.read<PortfolioRepo>())
            ..add(PortfolioListEvent.refreshData()),
        ),
      ],
      child: Builder(
        builder: (context) {
          return BlocConsumer<PortfolioListBloc, PortfolioListState>(
            listener: (context, state) {
              if (!state.loading) {
                UpdateDataSnackBar.show(
                  context: context,
                  error: state.error,
                );
              }
            },
            builder: (context, portfolioState) {
              return Scaffold(
                appBar: AppBar(
                  title: LogoWidget(),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.add),
                      onPressed: () {
                        context.push(AddPaymentPage());
                      },
                    ),
                    RefreshButton(
                      loading: portfolioState.loading,
                      backgroundColor: RefreshButtonBackground.surface,
                      onTapUpdate: () {
                        context.read<PortfolioListBloc>().add(PortfolioListEvent.refreshData());
                      },
                    ),
                    SizedBox(width: marginFromEdgeOfScreen),
                  ],
                ),
                body: portfolioState.coins.list.isEmpty
                    ? PortfolioListEmpty()
                    : RefreshIndicator(
                        onRefresh: () async {
                          final completer = Completer<void>();
                          context.read<PortfolioListBloc>().add(
                                PortfolioListEvent.refreshData(completer: completer),
                              );
                          await completer.future;
                        },
                        child: PortfolioListContent(coins: portfolioState.coins),
                      ),
              );
            },
          );
        },
      ),
    );
  }
}
