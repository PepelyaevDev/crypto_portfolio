import 'package:crypto_portfolio/data/gecko_api/api/dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/prices/prices.dart';

class GeckoSimpleSource {
  final DioClient _dioClient;
  GeckoSimpleSource(this._dioClient);

  static const String _path = '/api/v3/simple/';

  Future<PricesDTO> getPrice(List<String> idList) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      '$_path/price/',
      queryParameters: {
        'ids': idList.toString().replaceAll(' ', ''),
        'vs_currencies': 'usd',
      },
    );
    return PricesDTO.fromJson(response.data!);
  }
}
