import 'package:crypto_portfolio/application/app/extension/context_extension.dart';
import 'package:crypto_portfolio/application/app/widgets/custom_text_field.dart';
import 'package:crypto_portfolio/application/features/portfolio/bloc/add_payment_bloc/add_payment_bloc.dart';
import 'package:crypto_portfolio/application/features/search/bloc/search_bloc.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SelectCoinWidget extends StatefulWidget {
  final AddPaymentState coinState;
  final String? coinId;

  SelectCoinWidget({required this.coinState, this.coinId});

  @override
  State<SelectCoinWidget> createState() => _SelectCoinWidgetState();
}

class _SelectCoinWidgetState extends State<SelectCoinWidget> {
  @override
  void initState() {
    if (widget.coinId != null) {
      context.read<AddPaymentBloc>().add(AddPaymentEvent.getCoin(widget.coinId!));
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.coinState.maybeMap(
      initial: (_) => _SearchCoinWidget(),
      loading: (_) => CircularProgressIndicator(),
      success: (state) => _SelectedCoinWidget(
        img: state.coin.image,
        name: state.coin.name,
        onTapClear: () {
          context.read<AddPaymentBloc>().add(AddPaymentEvent.clear());
        },
      ),
      error: (_) => Text('error'),
      orElse: () => SizedBox(),
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
              hintText: context.localization.coinSearch,
              onChanged: (value) {
                searchDebouncer.run(() {
                  context.read<SearchBloc>().add(SearchEvent(value));
                });
              },
            ),
            SizedBox(height: 10),
            BlocBuilder<SearchBloc, SearchState>(
              builder: (_, state) {
                return state.maybeMap(
                  success: (state) => Wrap(
                    spacing: 10,
                    runSpacing: 10,
                    children: state.searchEntity.coins
                        .map((e) => _SearchedCoinWidget(
                              onTap: () {
                                context.read<AddPaymentBloc>().add(AddPaymentEvent.getCoin(e.id));
                              },
                              img: e.thumb,
                              name: e.name,
                            ))
                        .toList(),
                  ),
                  loading: (_) => Center(child: CircularProgressIndicator()),
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
  final String img;
  final String name;
  final VoidCallback? onTap;
  _SearchedCoinWidget({
    required this.img,
    required this.name,
    this.onTap,
  });
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)]),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(img, width: 20, height: 20),
              SizedBox(width: 10),
              Text(name),
            ],
          ),
        ),
      ),
    );
  }
}

class _SelectedCoinWidget extends StatelessWidget {
  final String img;
  final String name;
  final VoidCallback? onTapClear;
  _SelectedCoinWidget({
    required this.img,
    required this.name,
    this.onTapClear,
  });
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(color: Colors.blue, blurRadius: 2)]),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Image.network(img, width: 20, height: 20),
              SizedBox(width: 10),
              Text(name),
              SizedBox(width: 10),
              IconButton(
                onPressed: onTapClear,
                icon: Icon(Icons.clear),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
