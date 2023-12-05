import 'package:crypto_portfolio/data/gecko_api/api/gecko_dio_client.dart';
import 'package:crypto_portfolio/data/gecko_api/dto/search/search_dto.dart';

class GeckoSearchSource {
  final GeckoDioClient _dio;
  GeckoSearchSource(this._dio);

  static const String _path = '/api/v3/search/';

  Future<SearchDTO> search(String query) async {
    final response = await _dio.getData<Map<String, dynamic>>(
      GeckoGetParams(
        _path,
        queryParameters: {'query': query},
      ),
    );
    return SearchDTO.fromJson(response);
  }
}
