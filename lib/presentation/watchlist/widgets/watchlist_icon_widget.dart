import 'package:crypto_portfolio/common/assets/icons/app_icons.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/presentation/watchlist/bloc/watchlist_bloc.dart';
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
        return IconButton(
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
                backgroundColor: context.colors.primary,
                duration: Duration(seconds: 1),
              ),
            );
            context.read<WatchlistBloc>().add(WatchlistEvent.update(id));
          },
          icon: Icon(
            state.ids.contains(id) ? AppIcons.star : AppIcons.star_empty,
            color: context.colors.primary,
            size: 20,
          ),
        );
      },
    );
  }
}
