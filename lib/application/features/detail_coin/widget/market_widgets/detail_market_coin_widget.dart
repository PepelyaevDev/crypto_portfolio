import 'package:crypto_portfolio/application/app/design_system/widgets/update_data_snack_bar.dart';
import 'package:crypto_portfolio/application/features/detail_coin/bloc/market_chart_bloc/market_chart_bloc.dart';
import 'package:crypto_portfolio/application/features/detail_coin/bloc/market_coin_bloc/market_coin_bloc.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/market_widgets/detail_market_data_price_widget.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/market_widgets/detail_market_stat_widget.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/market_widgets/distance_buttons.dart';
import 'package:crypto_portfolio/application/features/detail_coin/widget/market_widgets/market_chart_widget.dart';
import 'package:crypto_portfolio/domain/entity/failure/extensions/get_message.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';
import 'package:crypto_portfolio/domain/repo/market_repo.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class DetailMarketCoinWidget extends StatefulWidget {
  final String coinId;

  const DetailMarketCoinWidget(this.coinId);

  @override
  State<DetailMarketCoinWidget> createState() => _DetailMarketCoinWidgetState();
}

class _DetailMarketCoinWidgetState extends State<DetailMarketCoinWidget> {
  MarketChartDistance _selectedDistance = MarketChartDistance.d1;
  final BehaviorSubject<MarketChartPriceEntity?> _selectedPrice = BehaviorSubject();

  @override
  void dispose() {
    _selectedPrice.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MarketCoinBloc>(
          create: (_) => MarketCoinBloc(context.read<MarketRepo>())
            ..add(MarketCoinEvent.getCoin(widget.coinId)),
        ),
        BlocProvider<MarketChartBloc>(
          create: (_) => MarketChartBloc(context.read<MarketRepo>(), widget.coinId)
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
                      error: state.error != null,
                      errorInfo: state.error?.getMessage(context),
                    );
                  }
                },
              ),
              BlocListener<MarketChartBloc, MarketChartState>(
                listener: (context, state) {
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
              ),
            ],
            child: RefreshIndicator(
              onRefresh: () async {
                context.read<MarketCoinBloc>().add(MarketCoinEvent.getCoin(widget.coinId));
                context.read<MarketChartBloc>().add(MarketChartEvent.refresh(_selectedDistance));
                return;
              },
              child: ListView(
                children: [
                  SizedBox(height: 15),
                  DetailMarketDataPriceWidget(
                    stream: _selectedPrice.stream,
                    onTapRefresh: () {
                      context.read<MarketCoinBloc>().add(MarketCoinEvent.getCoin(widget.coinId));
                    },
                  ),
                  SizedBox(height: 15),
                  MarketChartWidget(
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
                  DetailMarketStatWidget(),
                  SizedBox(height: 10),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
