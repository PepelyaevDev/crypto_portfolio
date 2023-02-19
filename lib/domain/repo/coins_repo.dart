import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_mapper.dart';
import 'package:crypto_portfolio/domain/entity/failure/failure_entity.dart';
import 'package:dartz/dartz.dart';

class CoinsRepo {
  const CoinsRepo({
    required this.hiveApiClient,
    required this.geckoApiClient,
  });

  final HiveApiClient hiveApiClient;
  final GeckoApiClient geckoApiClient;

  Future<Either<Failure, CoinsEntity>> getCoins() async {
    final CoinsEntity? coinsEntity = CoinsMapper.convertFromJson(hiveApiClient.coins.getCoins());
    try {
      final List<GeckoCoinDTO> geckoCoins = await geckoApiClient.coins.getAllCoins();
      final CoinsEntity updatedCoinsEntity;
      if (coinsEntity != null) {
        updatedCoinsEntity = CoinsMapper.updateMarketData(
          geckoCoins: geckoCoins,
          coinsEntity: coinsEntity,
        );
      } else {
        updatedCoinsEntity = CoinsMapper.firstInit(geckoCoins: geckoCoins);
      }
      await hiveApiClient.coins.updateCoins(CoinsMapper.convertToJson(updatedCoinsEntity));
      return right(updatedCoinsEntity);
    } catch (e) {
      if (coinsEntity != null) return right(coinsEntity);
      return left(Failure.from(e));
    }
  }

  Future<Either<Failure, CoinsEntity>> updateHistory(PaymentEntity paymentEntity) async {
    final getCoinsResponse = await getCoins();
    return getCoinsResponse.fold(
      (l) => left(l),
      (r) async {
        final CoinsEntity newCoinsEntity = CoinsMapper.updateHistory(
          coinsEntity: r,
          paymentEntity: paymentEntity,
        );
        await hiveApiClient.coins.updateCoins(CoinsMapper.convertToJson(newCoinsEntity));
        return right(newCoinsEntity);
      },
    );
  }
}
