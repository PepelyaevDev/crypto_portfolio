import 'package:crypto_portfolio/data/gecko_api/api/gecko_dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/search/search_dto.dart';

class GeckoSearchSource {
  final GeckoDioClient _dioClient;
  GeckoSearchSource(this._dioClient);

  static const String _path = '/api/v3/search/';

  Future<SearchDTO> search(String query) async {
    final response = await _dioClient.get<Map<String, dynamic>>(
      _path,
      queryParameters: {'query': query},
    );
    return SearchDTO.fromJson(response.data!);
  }
}
