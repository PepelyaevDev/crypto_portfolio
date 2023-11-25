import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/presentation/search/page/search_page.dart';
import 'package:crypto_portfolio/presentation/watchlist/bloc/watchlist_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmptyWatchlistWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 10.0,
              horizontal: 30,
            ),
            child: SizedBox(
              child: Text(
                context.localization.watchlistIsEmpty,
                style: AppStyles.normal16,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          ElevatedButton(
            onPressed: () async {
              await Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (_) => SearchPage(),
                ),
              );
              context.read<WatchlistBloc>().add(WatchlistEvent.refresh());
            },
            child: Text(context.localization.addCoins),
          ),
        ],
      ),
    );
  }
}
