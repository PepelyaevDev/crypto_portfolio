import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/custom_text_field.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/detail_coin/page/detail_coin_page.dart';
import 'package:crypto_portfolio/application/features/search/bloc/search_bloc.dart';
import 'package:crypto_portfolio/application/features/watchlist/widgets/watchlist_icon_widget.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
import 'package:crypto_portfolio/domain/entity/search/search_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  final SearchDebouncer searchDebouncer = SearchDebouncer();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(context.read<MarketRepo>()),
      child: Builder(builder: (context) {
        return Scaffold(
          appBar: AppBar(
            shadowColor: AppColors.primary,
            backgroundColor: AppColors.white,
            foregroundColor: AppColors.blackLight,
          ),
          body: ListView(
            children: [
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15.0),
                child: CustomTextField(
                  labelText: context.localization.coinSearch,
                  onChanged: (value) {
                    searchDebouncer.run(() {
                      context.read<SearchBloc>().add(SearchEvent(value));
                    });
                  },
                ),
              ),
              BlocConsumer<SearchBloc, SearchState>(
                listener: (_, state) {
                  state.mapOrNull(
                    error: (state) {
                      UpdateDataSnackBar.show(
                        context: context,
                        error: true,
                        errorInfo: state.error.getMessage(context),
                      );
                    },
                  );
                },
                builder: (_, state) {
                  return state.maybeMap(
                    success: (state) => Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemCount: state.searchEntity.coins.length,
                        separatorBuilder: (_, __) => Divider(height: 15),
                        itemBuilder: (context, i) {
                          return _SearchedCoinWidget(state.searchEntity.coins[i]);
                        },
                      ),
                    ),
                    loading: (_) => Padding(
                      padding: const EdgeInsets.only(top: 20.0),
                      child: Center(child: CircularProgressIndicator()),
                    ),
                    orElse: () => SizedBox(),
                  );
                },
              )
            ],
          ),
        );
      }),
    );
  }
}

class _SearchedCoinWidget extends StatelessWidget {
  final SearchCoinEntity searchCoinEntity;
  _SearchedCoinWidget(this.searchCoinEntity);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (_) => DetailCoinPage(
              coinLogo: searchCoinEntity.icon,
              coinSymbol: searchCoinEntity.symbol,
            ),
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Image.network(
                  searchCoinEntity.icon,
                  width: 30,
                  height: 30,
                  errorBuilder: (_, __, ___) => SizedBox(),
                ),
                SizedBox(width: 10),
                Text(
                  searchCoinEntity.symbol,
                  style: AppStyles.bold16,
                ),
                SizedBox(width: 10),
                if (searchCoinEntity.marketCapRank != null)
                  Text(
                    '#${searchCoinEntity.marketCapRank.toString()}',
                    style: AppStyles.normal14.copyWith(color: AppColors.grayDark),
                  ),
              ],
            ),
            WatchlistIconWidget(searchCoinEntity.symbol),
          ],
        ),
      ),
    );
  }
}
