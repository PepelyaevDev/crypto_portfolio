import 'dart:convert';
import 'package:crypto_portfolio/data/gecko_api/api/gecko_api_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/coin/gecko_coin_dto.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_entity.dart';
import 'package:crypto_portfolio/domain/entity/coins/coins_mapper.dart';
import 'package:hive/hive.dart';

const coinsBoxKey = 'COINS';

class CoinsRepo {
  const CoinsRepo({
    required this.box,
    required this.geckoApiClient,
  });

  final Box box;
  final GeckoApiClient geckoApiClient;

  Future<CoinsEntity> getCoins() async {
    ///TODO: вернуть сначала локально а потом добавить обновленное
    final jsonCoins = box.get(coinsBoxKey);
    final CoinsEntity? coinsEntity = jsonCoins == null
        ? null
        : CoinsEntity.fromJson(
            json.decode(jsonCoins),
          );
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
      await box.put(coinsBoxKey, updatedCoinsEntity.toJson());
      return updatedCoinsEntity;
    } catch (e) {
      if (coinsEntity != null) {
        return coinsEntity;
      }

      ///TODO: доделать работу с ошибками
      throw Exception();
    }
  }

  CoinsEntity getLastCoins() {
    return CoinsEntity.fromJson(json.decode(box.get(coinsBoxKey)));
  }

  Future<void> addPayment(PaymentEntity payment) async {
    // final CoinsEntity coinsEntity = CoinsEntity.fromJson(
    //   json.decode(box.get(coinsBoxKey)),
    // );
    //final
  }

  Future<void> deletePayment(PaymentEntity payment) async {
    // final CoinsEntity coinsEntity = CoinsEntity.fromJson(
    //   json.decode(box.get(coinsBoxKey)),
    // );
  }
}
