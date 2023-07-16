import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/icons/app_icons.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/watchlist/bloc/watchlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchlistIconWidget extends StatelessWidget {
  final String symbol;
  final bool appBarIcon;
  const WatchlistIconWidget(this.symbol, {this.appBarIcon = false});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<WatchlistBloc, WatchlistState>(
      builder: (context, state) {
        return SizedBox(
          height: appBarIcon ? 50 : null,
          width: appBarIcon ? 40 : null,
          child: Center(
            child: IconButton(
              splashRadius: 20,
              onPressed: () {
                if (ModalRoute.of(context) == null) return;
                if (ModalRoute.of(context)!.isCurrent == false) return;
                ScaffoldMessenger.of(context).clearSnackBars();
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      state.symbols.contains(symbol)
                          ? context.localization.removedFromWatchlist
                          : context.localization.addedToWatchlist,
                    ),
                    backgroundColor: AppColors.primary,
                    duration: Duration(seconds: 1),
                  ),
                );
                context.read<WatchlistBloc>().add(WatchlistEvent.update(symbol));
              },
              icon: Icon(
                state.symbols.contains(symbol) ? AppIcons.star : AppIcons.star_empty,
                color: AppColors.primary,
                size: 20,
              ),
            ),
          ),
        );
      },
    );
  }
}
