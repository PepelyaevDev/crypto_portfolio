import 'dart:async';

import 'package:crypto_portfolio/common/design_system/cards/watchlist_data_card.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/logo_widget.dart';
import 'package:crypto_portfolio/common/design_system/buttons/refresh_icon_button.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/presentation/search/page/search_page.dart';
import 'package:crypto_portfolio/presentation/watchlist/bloc/watchlist_bloc.dart';
import 'package:crypto_portfolio/presentation/watchlist/widgets/watchlist_empty.dart';
import 'package:crypto_portfolio/presentation/watchlist/widgets/watchlist_content.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchlistPage extends StatefulWidget {
  @override
  State<WatchlistPage> createState() => _WatchlistPageState();
}

class _WatchlistPageState extends State<WatchlistPage> {
  @override
  void initState() {
    context.read<WatchlistBloc>().add(WatchlistEvent.refresh());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<WatchlistBloc, WatchlistState>(
      listenWhen: (oldState, newState) {
        if (newState.error != null) {
          return true;
        }
        return oldState.coins != newState.coins;
      },
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
                onPressed: () async {
                  await context.push(SearchPage());
                  context.read<WatchlistBloc>().add(WatchlistEvent.refresh());
                },
              ),
              RefreshButton(
                loading: state.loading,
                backgroundColor: RefreshButtonBackground.surface,
                onTapUpdate: () {
                  context.read<WatchlistBloc>().add(WatchlistEvent.refresh());
                },
              ),
              SizedBox(width: marginFromEdgeOfScreen),
            ],
            bottom: state.coins.list.isEmpty
                ? null
                : PreferredSize(
                    child: Padding(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: WatchlistDataCard(
                        marketCap: Text(
                          context.localization.marketCap,
                          style: context.styles.bodySmall,
                          overflow: TextOverflow.ellipsis,
                          softWrap: true,
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
                    preferredSize: Size(double.infinity, 30),
                  ),
          ),
          body: RefreshIndicator(
            onRefresh: () async {
              final completer = Completer<void>();
              context.read<WatchlistBloc>().add(
                    WatchlistEvent.refresh(completer: completer),
                  );
              await completer.future;
            },
            child: state.coins.list.isEmpty
                ? EmptyWatchlistWidget()
                : WatchlistContent(coins: state.coins),
          ),
        );
      },
    );
  }
}
