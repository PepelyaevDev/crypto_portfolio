import 'dart:async';

import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/app_bar_icon_button.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/logo_widget.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/refresh_icon_button.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/search/page/search_page.dart';
import 'package:crypto_portfolio/application/features/watchlist/bloc/watchlist_bloc.dart';
import 'package:crypto_portfolio/application/features/watchlist/widgets/empty_watchlist_widget.dart';
import 'package:crypto_portfolio/application/features/watchlist/widgets/watchlist_coins_widget.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
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
            error: state.error != null,
            errorInfo: state.error?.getMessage(context),
          );
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            shadowColor: AppColors.primary,
            backgroundColor: AppColors.white,
            foregroundColor: AppColors.blackLight,
            title: LogoWidget(),
            centerTitle: true,
            actions: [
              AppBarIconButton(
                iconData: Icons.search,
                onTap: () async {
                  await Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (_) => SearchPage(),
                    ),
                  );
                  context.read<WatchlistBloc>().add(WatchlistEvent.refresh());
                },
              ),
              RefreshIconButton(
                loading: state.loading,
                onTapUpdate: () {
                  context.read<WatchlistBloc>().add(WatchlistEvent.refresh());
                },
              ),
            ],
            bottom: state.coins.list.isEmpty
                ? null
                : PreferredSize(
                    child: WatchlistPageRow(
                      marketCap: Text(
                        context.localization.marketCap,
                        style: AppStyles.normal14,
                        overflow: TextOverflow.ellipsis,
                        softWrap: true,
                      ),
                      price: Text(
                        context.localization.price,
                        style: AppStyles.normal14,
                      ),
                      changes: Text(
                        context.localization.percentage24h,
                        style: AppStyles.normal14,
                      ),
                    ),
                    preferredSize: Size(double.infinity, 35),
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
                : WatchlistCoinsWidget(coins: state.coins),
          ),
        );
      },
    );
  }
}
