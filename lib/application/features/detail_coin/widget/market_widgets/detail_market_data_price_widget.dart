import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/application/app/design_system/widgets/coingecko_widget.dart';
import 'package:crypto_portfolio/application/app/extension/date_time_extension.dart';
import 'package:crypto_portfolio/application/app/extension/double_extension.dart';
import 'package:crypto_portfolio/application/features/detail_coin/bloc/market_coin_bloc/market_coin_bloc.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class DetailMarketDataPriceWidget extends StatelessWidget {
  final ValueStream<MarketChartPriceEntity?> stream;
  final VoidCallback onTapRefresh;

  const DetailMarketDataPriceWidget({
    required this.stream,
    required this.onTapRefresh,
  });
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MarketCoinBloc, MarketCoinState>(
      builder: (context, state) {
        late final Widget priceWidget;
        priceWidget = state.coin == null
            ? SizedBox()
            : StreamBuilder(
                stream: stream,
                builder: (context, snapshot) {
                  return Text(
                    snapshot.data == null
                        ? state.coin!.currentPrice.moneyFull
                        : snapshot.data!.price.moneyFull,
                    style: AppStyles.bold30,
                  );
                },
              );
        final updateWidget = state.loading
            ? SizedBox(
                height: 30,
                width: 30,
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: CircularProgressIndicator(
                      color: AppColors.blackLight,
                      strokeWidth: 3,
                    ),
                  ),
                ),
              )
            : InkWell(
                borderRadius: BorderRadius.circular(15),
                onTap: onTapRefresh,
                child: Icon(Icons.refresh, size: 30),
              );
        return StreamBuilder(
          stream: stream,
          builder: (_, snapshot) {
            final date = snapshot.data == null ? DateTime.now() : snapshot.data!.time;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.66,
                        child: priceWidget,
                      ),
                      updateWidget,
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        '${date.date(context)} ${date.time}',
                        style: AppStyles.normal16,
                      ),
                      CoinGeckoWidget(rightPadding: 0),
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
}
