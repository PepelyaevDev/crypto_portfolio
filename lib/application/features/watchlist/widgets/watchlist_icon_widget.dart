import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/icons/app_icons.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/watchlist/bloc/watchlist_bloc.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class WatchlistIconWidget extends StatelessWidget {
  final CoinId id;
  final bool appBarIcon;
  const WatchlistIconWidget(this.id, {this.appBarIcon = false});

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
                      state.ids.contains(id)
                          ? context.localization.removedFromWatchlist
                          : context.localization.addedToWatchlist,
                    ),
                    backgroundColor: AppColors.primary,
                    duration: Duration(seconds: 1),
                  ),
                );
                context.read<WatchlistBloc>().add(WatchlistEvent.update(id));
              },
              icon: Icon(
                state.ids.contains(id) ? AppIcons.star : AppIcons.star_empty,
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
