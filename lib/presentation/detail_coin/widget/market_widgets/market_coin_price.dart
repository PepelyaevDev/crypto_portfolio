import 'package:crypto_portfolio/common/design_system/buttons/refresh_icon_button.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/coingecko_widget.dart';
import 'package:crypto_portfolio/common/utils/consts/app_consts.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/presentation/detail_coin/bloc/market_coin_bloc/market_coin_bloc.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class MarketCoinPrice extends StatelessWidget {
  final ValueStream<MarketChartPriceEntity?> stream;
  final bool loading;
  final VoidCallback onTapRefresh;

  const MarketCoinPrice({
    required this.stream,
    required this.loading,
    required this.onTapRefresh,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarketCoinBloc, MarketCoinState>(
      builder: (context, state) {
        return StreamBuilder(
          stream: stream,
          builder: (_, snapshot) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: marginFromEdgeOfScreen),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      state.coin == null
                          ? SizedBox()
                          : StreamBuilder(
                              stream: stream,
                              builder: (context, snapshot) {
                                return Text(
                                  snapshot.data == null
                                      ? state.coin!.currentPrice.moneyFull
                                      : snapshot.data!.price.moneyFull,
                                  style: context.styles.displayMedium,
                                );
                              },
                            ),
                      RefreshButton(
                        loading: loading,
                        backgroundColor: RefreshButtonBackground.background,
                        onTapUpdate: onTapRefresh,
                      ),
                    ],
                  ),
                  SizedBox(height: 5),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${_date(snapshot).dateLong(context)} ${_date(snapshot).time}',
                        style: context.styles.bodySmall,
                      ),
                      CoinGeckoWidget(),
                    ],
                  )
                ],
              ),
            );
          },
        );
      },
    );
  }

  DateTime _date(AsyncSnapshot<MarketChartPriceEntity?> snapshot) =>
      snapshot.data == null ? DateTime.now() : snapshot.data!.time;
}
