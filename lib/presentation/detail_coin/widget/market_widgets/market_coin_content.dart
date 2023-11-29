import 'dart:async';

import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/presentation/detail_coin/bloc/market_chart_bloc/market_chart_bloc.dart';
import 'package:crypto_portfolio/presentation/detail_coin/bloc/market_coin_bloc/market_coin_bloc.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/market_widgets/market_coin_price.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/market_widgets/market_coin_stat.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/market_widgets/distance_buttons.dart';
import 'package:crypto_portfolio/presentation/detail_coin/widget/market_widgets/market_coin_chart.dart';
import 'package:crypto_portfolio/presentation/news/bloc/news_bloc/news_bloc.dart';
import 'package:crypto_portfolio/presentation/news/widgets/news_list_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class MarketCoinContent extends StatefulWidget {
  final CoinId id;

  const MarketCoinContent(this.id);

  @override
  State<MarketCoinContent> createState() => _MarketCoinContentState();
}

class _MarketCoinContentState extends State<MarketCoinContent> {
  MarketChartDistance _selectedDistance = MarketChartDistance.d1;
  final BehaviorSubject<MarketChartPriceEntity?> _selectedPrice = BehaviorSubject();
  final ScrollController _controller = ScrollController();
  final _initPageCompleter = (Completer<void>(), Completer<void>(), Completer<void>());
  bool _loadingState = false;

  bool get _initInProcess =>
      !_initPageCompleter.$1.isCompleted ||
      !_initPageCompleter.$2.isCompleted ||
      !_initPageCompleter.$3.isCompleted;

  @override
  void dispose() {
    _controller.dispose();
    _selectedPrice.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MarketCoinBloc>(
          create: (_) => MarketCoinBloc(context.read<MarketRepo>())
            ..add(MarketCoinEvent.getCoin(id: widget.id)),
        ),
        BlocProvider<MarketChartBloc>(
          create: (_) => MarketChartBloc(context.read<MarketRepo>(), widget.id)
            ..add(MarketChartEvent.setDistance(_selectedDistance)),
        ),
      ],
      child: Builder(
        builder: (context) {
          return MultiBlocListener(
            listeners: [
              BlocListener<MarketCoinBloc, MarketCoinState>(
                listener: (context, state) {
                  if (!state.loading) {
                    UpdateDataSnackBar.show(
                      context: context,
                      error: state.error,
                    );
                    if (!_initPageCompleter.$1.isCompleted) {
                      setState(() {
                        _initPageCompleter.$1.complete();
                        if (state.coin == null) {
                          _initPageCompleter.$3.complete();
                        }
                      });
                    }
                  }
                },
              ),
              BlocListener<MarketChartBloc, MarketChartState>(
                listener: (context, state) {
                  if (state.loadedState) {
                    UpdateDataSnackBar.show(context: context, error: state.error);
                    if (!_initPageCompleter.$2.isCompleted) {
                      setState(() {
                        _initPageCompleter.$2.complete();
                      });
                    }
                  }
                },
              ),
              BlocListener<NewsBloc, NewsState>(
                listener: (_, state) {
                  state.maybeMap(
                    loading: (_) {},
                    orElse: () {
                      if (!_initPageCompleter.$3.isCompleted) {
                        setState(() {
                          _initPageCompleter.$3.complete();
                        });
                      }
                    },
                  );
                },
              ),
            ],
            child: RefreshIndicator(
              onRefresh: () async {
                await _refreshPage(context);
              },
              child: ListView(
                controller: _controller,
                children: [
                  SizedBox(height: 10),
                  MarketCoinPrice(
                    stream: _selectedPrice.stream,
                    loading: _loadingState || _initInProcess,
                    onTapRefresh: () async {
                      await _refreshPage(context);
                    },
                  ),
                  SizedBox(height: 10),
                  MarketCoinChart(
                    onTrackballPositionChanging: (args, state) {
                      state.mapOrNull(
                        success: (state) {
                          _selectedPrice.add(
                            args.chartPointInfo.dataPointIndex == null
                                ? null
                                : state.marketChart.prices[args.chartPointInfo.dataPointIndex!],
                          );
                        },
                      );
                    },
                    onTrackballDispose: () {
                      _selectedPrice.add(null);
                    },
                  ),
                  SizedBox(height: 10),
                  DistanceButtons(
                    selectedDistance: _selectedDistance,
                    onTap: (MarketChartDistance distance) {
                      setState(() {
                        _selectedDistance = distance;
                      });
                      context.read<MarketChartBloc>().add(
                            MarketChartEvent.setDistance(_selectedDistance),
                          );
                    },
                  ),
                  SizedBox(height: 10),
                  MarketCoinStat(),
                  SizedBox(height: 10),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0),
                    child: Text(
                      context.localization.news,
                      style: context.styles.titleMedium,
                    ),
                  ),
                  BlocBuilder<MarketCoinBloc, MarketCoinState>(
                    builder: (context, state) {
                      if (state.coin == null) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: Center(child: CircularProgressIndicator()),
                        );
                      }
                      return NewsListWidget(
                        controller: _controller,
                        category: NewsCategory.coin,
                        symbol: widget.id.symbol,
                      );
                    },
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Future<void> _refreshPage(BuildContext context) async {
    setState(() {
      _loadingState = true;
    });

    final coinCompleter = Completer<void>();
    final chartCompleter = Completer<void>();
    final newsCompleter = Completer<void>();

    context.read<MarketCoinBloc>().add(
          MarketCoinEvent.getCoin(id: widget.id, completer: coinCompleter),
        );
    context.read<MarketChartBloc>().add(
          MarketChartEvent.refresh(_selectedDistance, chartCompleter),
        );
    context.read<NewsBloc>().add(NewsEvent.refresh(completer: newsCompleter));

    await (
      coinCompleter.future,
      chartCompleter.future,
      newsCompleter.future,
    ).wait;

    setState(() {
      _loadingState = false;
    });
  }
}
