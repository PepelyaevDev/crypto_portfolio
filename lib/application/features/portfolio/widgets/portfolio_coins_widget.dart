import 'package:crypto_portfolio/application/features/portfolio/widgets/payment_widget.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:flutter/material.dart';

class PortfolioCoinsWidget extends StatelessWidget {
  final String searchValue;
  final CoinsEntity coinsEntity;
  const PortfolioCoinsWidget({
    required this.searchValue,
    required this.coinsEntity,
  });

  bool showCoin(CoinEntity coinEntity) {
    return coinEntity.name.toLowerCase().contains(searchValue.toLowerCase()) ||
        coinEntity.symbol.toLowerCase().contains(searchValue.toLowerCase());
  }

  @override
  Widget build(BuildContext context) {
    final List<CoinEntity> coinsList = coinsEntity.coins.where((e) => showCoin(e)).toList();
    return Expanded(
      child: ListView.separated(
        itemBuilder: (_, i) => _PortfolioCoinWidget(
          coinEntity: coinsList[i],
        ),
        separatorBuilder: (_, __) => SizedBox(height: 10),
        itemCount: coinsList.length,
      ),
    );
  }
}

class _PortfolioCoinWidget extends StatelessWidget {
  const _PortfolioCoinWidget({required this.coinEntity});

  final CoinEntity coinEntity;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(color: Colors.grey, blurRadius: 1)],
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Text(coinEntity.name),
              SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('current price - ${coinEntity.currentPrice}'),
                        Text('average purchase price - ${coinEntity.buyPrice}'),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text('holdings - ${coinEntity.allCoinsCurrentPrice}'),
                        Text('invested - ${coinEntity.moneyInvested}'),
                      ],
                    ),
                  ),
                ],
              ),
              ...coinEntity.history.map((payment) => PaymentWidget(payment: payment)).toList(),
            ],
          ),
        ),
      ),
    );
  }
}
