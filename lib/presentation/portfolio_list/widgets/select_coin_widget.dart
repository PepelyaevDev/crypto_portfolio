import 'package:crypto_portfolio/common/design_system/custom_widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/custom_text_field.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/presentation/search/bloc/search_bloc.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/search/search_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectCoinWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AddPaymentBloc, AddPaymentState>(
      builder: (_, AddPaymentState state) {
        return state.maybeMap(
          initial: (_) => _SearchCoinWidget(),
          loading: (_) => Center(
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: CircularProgressIndicator(),
            ),
          ),
          success: (state) => _SelectedCoinWidget(coinEntity: state.coin),
          orElse: () => _SearchCoinWidget(),
        );
      },
    );
  }
}

class _SearchCoinWidget extends StatelessWidget {
  final SearchDebouncer searchDebouncer = SearchDebouncer();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(context.read<MarketRepo>()),
      child: Builder(builder: (context) {
        return Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CustomTextField(
              labelText: context.localization.coinSearch,
              onChanged: (value) {
                searchDebouncer.run(() {
                  context.read<SearchBloc>().add(SearchEvent(value));
                });
              },
            ),
            BlocConsumer<SearchBloc, SearchState>(
              listener: (_, state) {
                state.mapOrNull(
                  error: (state) {
                    UpdateDataSnackBar.show(
                      context: context,
                      error: state.error,
                    );
                  },
                );
              },
              builder: (_, state) {
                return state.maybeMap(
                  success: (state) => Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: Wrap(
                      spacing: 10,
                      runSpacing: 10,
                      children: state.searchEntity.coins.map((e) {
                        return _SearchedCoinWidget(e);
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
      borderRadius: BorderRadius.circular(baseBorderRadius),
      onTap: () {
        context.read<AddPaymentBloc>().add(AddPaymentEvent.getCoin(searchCoinEntity.id));
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(baseBorderRadius),
          border: Border.all(color: context.colors.primary),
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(
                searchCoinEntity.icon,
                width: 20,
                height: 20,
                errorBuilder: (_, __, ___) => SizedBox(),
              ),
              SizedBox(width: 10),
              Text(
                searchCoinEntity.id.symbol,
                style: context.styles.bodySmall,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _SelectedCoinWidget extends StatelessWidget {
  final CoinEntity coinEntity;

  _SelectedCoinWidget({required this.coinEntity});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(baseBorderRadius),
        border: Border.all(color: context.colors.primary),
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width - 150,
                child: Row(
                  children: [
                    SizedBox(width: 5),
                    Image.network(
                      coinEntity.image,
                      width: 20,
                      height: 20,
                      errorBuilder: (_, __, ___) => SizedBox(),
                    ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        coinEntity.id.symbol,
                        style: context.styles.bodySmall,
                      ),
                    ),
                  ],
                ),
              ),
              IconButton(
                splashRadius: 15,
                onPressed: () {
                  context.read<AddPaymentBloc>().add(AddPaymentEvent.clear());
                },
                icon: Icon(Icons.clear),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
