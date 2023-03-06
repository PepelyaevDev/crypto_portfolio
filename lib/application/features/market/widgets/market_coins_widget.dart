import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class MarketCoinsWidget extends StatelessWidget {
  final CoinsEntity coins;
  const MarketCoinsWidget({required this.coins});

  @override
  Widget build(BuildContext context) {

    ///TODO: add localization + разделить виджет на 3 колонки
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 40.0, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    flex: 2,
                    child: Text(
                      'coin',
                      textAlign: TextAlign.center,
                    )),
                Expanded(
                    flex: 3,
                    child: Text(
                      'price',
                      textAlign: TextAlign.right,
                    )),
                Expanded(
                    flex: 5,
                    child: Text(
                      'marketCap',
                      textAlign: TextAlign.right,
                    )),
              ],
            ),
          ),
          SizedBox(height: 10),
          Expanded(
            child: ListView.separated(
              itemBuilder: (BuildContext context, int index) {
                return _MarketCoinWidget(coin: coins.list[index], index: index + 1);
              },
              separatorBuilder: (BuildContext context, int index) {
                return Divider(height: 15);
              },
              itemCount: coins.list.length,
            ),
          )
        ],
      ),
    );
  }
}

class _MarketCoinWidget extends StatelessWidget {
  final CoinEntity coin;
  final int index;
  const _MarketCoinWidget({required this.coin, required this.index});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Row(
        children: [
          SizedBox(width: 40, child: Text(index.toString())),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Expanded(
                    flex: 2,
                    child: Column(
                      children: [
                        Image.network(coin.image, width: 30, height: 30),
                        Text(
                          coin.symbol,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    )),
                Expanded(
                    flex: 3,
                    child: Text(
                      coin.currentPrice.toString(),
                      textAlign: TextAlign.right,
                    )),
                Expanded(
                    flex: 5,
                    child: Text(
                      coin.marketCap.toString(),
                      textAlign: TextAlign.right,
                    )),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
