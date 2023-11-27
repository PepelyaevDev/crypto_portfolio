import 'package:crypto_portfolio/application/app/design_system/core/colors.dart';
import 'package:crypto_portfolio/application/app/design_system/core/text_styles.dart';
import 'package:crypto_portfolio/common/design_system/custom_widgets/coingecko_widget.dart';
import 'package:crypto_portfolio/common/utils/extensions/date_time_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/presentation/detail_coin/bloc/market_coin_bloc/market_coin_bloc.dart';
import 'package:crypto_portfolio/domain/entity/market_chart/market_chart_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

class DetailMarketDataPriceWidget extends StatelessWidget {
  final ValueStream<MarketChartPriceEntity?> stream;
  final bool loading;
  final VoidCallback onTapRefresh;

  const DetailMarketDataPriceWidget({
    required this.stream,
    required this.loading,
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
        final updateWidget = loading
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
                child: Icon(Icons.refresh, size: 30, color: AppColors.blackLight),
              );
        return StreamBuilder(
          stream: stream,
          builder: (_, snapshot) {
            final date = snapshot.data == null ? DateTime.now() : snapshot.data!.time;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
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
                        '${date.dateLong(context)} ${date.time}',
                        style: AppStyles.normal16,
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
}
