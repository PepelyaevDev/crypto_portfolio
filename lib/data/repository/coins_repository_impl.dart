import 'package:crypto_portfolio/data/datasource/coingecko_api_client.dart';
import 'package:crypto_portfolio/data/datasource/hive_api_client.dart';
import 'package:crypto_portfolio/data/mapper/coingecko_mapper.dart';
import 'package:crypto_portfolio/data/mapper/hive_mapper.dart';
import 'package:crypto_portfolio/domain/entity/market_coins_list.dart';
import 'package:crypto_portfolio/domain/entity/payment.dart';
import 'package:crypto_portfolio/domain/repository/coins_repository.dart';

class CoinsRepositoryImpl implements CoinsRepository {
  CoinsRepositoryImpl({
    required this.coinGeckoApiClient,
    required this.hiveApiClient,
    required this.coingeckoMapper,
    required this.hiveMapper,
  });

  final CoinGeckoApiClient coinGeckoApiClient;
  final HiveApiClient hiveApiClient;
  final CoingeckoMapper coingeckoMapper;
  final HiveMapper hiveMapper;

  @override
  Future<MarketCoinsList> getMarketCoinsListRemote() async {
    return coingeckoMapper.marketCoinsListDtoToUi(await coinGeckoApiClient.getCoins());
  }

  @override
  MarketCoinsList getMarketCoinsListLocal() {
    return hiveMapper.marketCoinsListDtoToUi(hiveApiClient.getMarketCoins());
  }

  @override
  Future<void> updateMarketCoinsListLocal(MarketCoinsList marketCoinsList) async {
    await hiveApiClient.updateMarketCoins(hiveMapper.marketCoinsListUiToDto(marketCoinsList));
  }

  @override
  List<Payment> getPaymentsList() {
    return hiveMapper.paymentsListDtoToUi(hiveApiClient.getPaymentsList());
  }

  @override
  Future<void> addPayment(Payment payment) async {
    await hiveApiClient.addPayment(hiveMapper.paymentUiToDto(payment));
  }

  @override
  Future<void> deletePayment(Payment payment) async {
    await hiveApiClient.deletePayment(hiveMapper.paymentUiToDto(payment));
  }
}
