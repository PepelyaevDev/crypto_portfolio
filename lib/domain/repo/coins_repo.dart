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
    required HiveApiClient hiveApiClient,
    required GeckoApiClient geckoApiClient,
  })  : _hiveApiClient = hiveApiClient,
        _geckoApiClient = geckoApiClient;

  final HiveApiClient _hiveApiClient;
  final GeckoApiClient _geckoApiClient;

  CoinsEntity getCoinsLocal() {
    return _hiveApiClient.coins.getCoins().convertToCoinsEntity;
  }

  Future<Either<Failure, CoinsEntity>> getCoinsRemote() async {
    try {
      final CoinsEntity coinsEntity = getCoinsLocal();
      final List<GeckoCoinDTO> geckoCoins = await _geckoApiClient.coins.getAllCoins();
      final CoinsEntity updatedCoinsEntity;
      if (coinsEntity.list.isNotEmpty) {
        updatedCoinsEntity = UpdateMarketDataMapper.call(
          geckoCoins: geckoCoins,
          coinsEntity: coinsEntity,
        );
      } else {
        updatedCoinsEntity = CreateEmptyCoinsMapper.call(geckoCoins: geckoCoins);
      }
      await _hiveApiClient.coins.updateCoins(updatedCoinsEntity.convertToJson);
      return right(updatedCoinsEntity);
    } catch (e) {
      return left(Failure.from(e));
    }
  }

  Future<CoinsEntity> updateHistory(PaymentEntity paymentEntity) async {
    final CoinsEntity coins = getCoinsLocal();
    final CoinsEntity newCoinsEntity = UpdateHistoryMapper.call(
      coinsEntity: coins,
      paymentEntity: paymentEntity,
    );
    await _hiveApiClient.coins.updateCoins(newCoinsEntity.convertToJson);
    return newCoinsEntity;
  }
}
