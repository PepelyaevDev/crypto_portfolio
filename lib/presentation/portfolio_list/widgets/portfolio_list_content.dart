import 'package:crypto_portfolio/common/design_system/cards/portfolio_data_card.dart';
import 'package:crypto_portfolio/common/utils/extensions/context_extension.dart';
import 'package:crypto_portfolio/common/utils/extensions/double_extension.dart';
import 'package:crypto_portfolio/presentation/detail_coin/page/detail_coin_page.dart';
import 'package:crypto_portfolio/presentation/portfolio_list/pages/add_payment_page.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coin_data.dart';
import 'package:flutter/material.dart';
import 'portfolio_list_stat.dart';

class PortfolioListContent extends StatelessWidget {
  final CoinsEntity coins;
  const PortfolioListContent({required this.coins});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(height: 20),
        PortfolioListStat(coins),
        ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemBuilder: (_, i) => _PortfolioCoinWidget(coins.list[i]),
          separatorBuilder: (_, __) => Divider(height: 2),
          itemCount: coins.list.length,
        ),
      ],
    );
  }
}

class _PortfolioCoinWidget extends StatefulWidget {
  final CoinEntity coinEntity;

  _PortfolioCoinWidget(this.coinEntity);

  @override
  State<_PortfolioCoinWidget> createState() => _PortfolioCoinWidgetState();
}

class _PortfolioCoinWidgetState extends State<_PortfolioCoinWidget> {
  bool openDetails = false;

  void changeOpenDetails() {
    setState(() {
      openDetails = !openDetails;
    });
  }

  @override
  Widget build(BuildContext context) {
    final color = widget.coinEntity.hasProfit ? context.colors.secondary : context.colors.error;
    return InkWell(
      onTap: () {
        context.push(
          DetailCoinPage(
            coinLogo: widget.coinEntity.image,
            id: widget.coinEntity.id,
            initialIndex: 1,
          ),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 15.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            PortfolioDataCard(
              coin: Image.network(
                widget.coinEntity.image,
                width: 25,
                height: 25,
                errorBuilder: (_, __, ___) => SizedBox(),
              ),
              name: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.coinEntity.id.symbol.toString(),
                    style: context.styles.labelSmall,
                  ),
                  SizedBox(height: 2),
                  Text(
                    widget.coinEntity.currentPrice.moneyFull,
                    style: context.styles.bodySmall,
                  ),
                ],
              ),
              holdings: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    widget.coinEntity.holdingsValue.moneyFull,
                    style: context.styles.labelSmall,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(
                        widget.coinEntity.iconData,
                        color: color,
                        size: 20,
                      ),
                      Text(
                        widget.coinEntity.profit,
                        style: context.styles.bodySmall!.copyWith(color: color),
                      ),
                    ],
                  ),
                ],
              ),
              button: InkWell(
                borderRadius: BorderRadius.circular(10),
                onTap: changeOpenDetails,
                child: Padding(
                  padding: const EdgeInsets.all(5.0),
                  child: Icon(
                    openDetails ? Icons.arrow_drop_up : Icons.arrow_drop_down,
                    size: 30,
                    color: context.colors.onBackground,
                  ),
                ),
              ),
            ),
            openDetails ? _PortfolioCoinWidgetDetails(widget.coinEntity) : SizedBox()
          ],
        ),
      ),
    );
  }
}

class _PortfolioCoinWidgetDetails extends StatelessWidget {
  final CoinEntity coinEntity;

  _PortfolioCoinWidgetDetails(this.coinEntity);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 7),
        PortfolioDataCard(
          name: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                coinEntity.averageNetCost,
                style: context.styles.labelSmall,
              ),
              Text(
                context.localization.averageNetCost,
                style: context.styles.bodySmall,
              ),
            ],
          ),
          holdings: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                coinEntity.invested.moneyFull,
                style: context.styles.labelSmall,
              ),
              Text(
                context.localization.invested,
                style: context.styles.bodySmall,
              ),
            ],
          ),
          button: InkWell(
            borderRadius: BorderRadius.circular(10),
            onTap: () {
              context.push(AddPaymentPage(id: coinEntity.id));
            },
            child: Padding(
              padding: const EdgeInsets.all(7.5),
              child: Icon(
                Icons.add,
                size: 25,
                color: context.colors.onBackground,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
