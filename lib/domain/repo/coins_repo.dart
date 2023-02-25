import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/data/hive_api/api/hive_api_client.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/extensions/coins_json_converter.dart';
import 'package:crypto_portfolio/domain/entity/coins/mappers/create_emty_coins_mapper.dart';
import 'package:crypto_portfolio/domain/entity/coins/mappers/update_history_mapper.dart';
import 'package:crypto_portfolio/domain/entity/coins/mappers/update_market_data_mapper.dart';
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
    final CoinsEntity? coinsEntity = hiveApiClient.coins.getCoins().convertToCoinsEntity;
    try {
      final List<GeckoCoinDTO> geckoCoins = await geckoApiClient.coins.getAllCoins();
      final CoinsEntity updatedCoinsEntity;
      if (coinsEntity != null) {
        updatedCoinsEntity = UpdateMarketDataMapper.call(
          geckoCoins: geckoCoins,
          coinsEntity: coinsEntity,
        );
      } else {
        updatedCoinsEntity = CreateEmptyCoinsMapper.call(geckoCoins: geckoCoins);
      }
      await hiveApiClient.coins.updateCoins(updatedCoinsEntity.convertToJson);
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
        final CoinsEntity newCoinsEntity = UpdateHistoryMapper.call(
          coinsEntity: r,
          paymentEntity: paymentEntity,
        );
        await hiveApiClient.coins.updateCoins(newCoinsEntity.convertToJson);
        return right(newCoinsEntity);
      },
    );
  }
}
