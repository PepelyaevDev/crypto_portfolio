import 'dart:async';

import 'package:crypto_portfolio/common/design_system/cards/market_data_card.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/logo_widget.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/design_system/buttons/refresh_icon_button.dart';
import 'package:crypto_portfolio/presentation/market_list/bloc/market_list_bloc.dart';
import 'package:crypto_portfolio/presentation/market_list/widgets/market_list_content.dart';
import 'package:crypto_portfolio/presentation/search/page/search_page.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MarketListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          MarketListBloc(context.read<MarketRepo>())..add(MarketListEvent.refreshData()),
      child: Builder(
        builder: (context) {
          return BlocConsumer<MarketListBloc, MarketListState>(
            listener: (context, state) {
              if (!state.loading) {
                UpdateDataSnackBar.show(
                  context: context,
                  error: state.error,
                );
              }
            },
            builder: (context, state) {
              return Scaffold(
                appBar: AppBar(
                  title: LogoWidget(),
                  actions: [
                    IconButton(
                      icon: Icon(Icons.search),
                      onPressed: () {
                        context.push(SearchPage());
                      },
                    ),
                    RefreshButton(
                      loading: state.loading,
                      backgroundColor: RefreshButtonBackground.surface,
                      onTapUpdate: () {
                        context.read<MarketListBloc>().add(MarketListEvent.refreshData());
                      },
                    ),
                    SizedBox(width: marginFromEdgeOfScreen),
                  ],
                  bottom: PreferredSize(
                    preferredSize: Size(double.infinity, 30),
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: MarketDataCard(
                        index: Text(
                          '#',
                          style: context.styles.bodySmall,
                        ),
                        marketCap: Text(
                          context.localization.marketCap,
                          style: context.styles.bodySmall,
                        ),
                        price: Text(
                          context.localization.price,
                          style: context.styles.bodySmall,
                        ),
                        changes: Text(
                          context.localization.percentage24h,
                          style: context.styles.bodySmall,
                        ),
                      ),
                    ),
                  ),
                ),
                body: RefreshIndicator(
                  onRefresh: () async {
                    final completer = Completer<void>();
                    context.read<MarketListBloc>().add(
                          MarketListEvent.refreshData(completer: completer),
                        );
                    await completer.future;
                  },
                  child: MarketListContent(coins: state.coins),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
