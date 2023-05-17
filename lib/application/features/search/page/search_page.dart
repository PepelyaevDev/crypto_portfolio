import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/custom_text_field.dart';
import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/features/detail_coin/page/detail_coin_page.dart';
import 'package:crypto_portfolio/application/features/search/bloc/search_bloc.dart';
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
            shadowColor: AppColors.blue,
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
              BlocBuilder<SearchBloc, SearchState>(
                builder: (_, state) {
                  return state.maybeMap(
                    success: (state) => Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: state.searchEntity.coins.map((e) {
                          return Padding(
                            padding: const EdgeInsets.only(bottom: 10.0),
                            child: _SearchedCoinWidget(e),
                          );
                        }).toList(),
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
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15.0),
      child: InkWell(
        borderRadius: BorderRadius.circular(4),
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (_) => DetailCoinPage(
                coinLogo: searchCoinEntity.thumb,
                coinSymbol: searchCoinEntity.symbol,
                coinId: searchCoinEntity.id,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(color: AppColors.blue),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              children: [
                Image.network(
                  searchCoinEntity.thumb,
                  width: 20,
                  height: 20,
                  errorBuilder: (_, __, ___) => SizedBox(),
                ),
                SizedBox(width: 10),
                Expanded(
                  child: Text(
                    searchCoinEntity.name,
                    style: AppStyles.normal14,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
