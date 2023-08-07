import 'package:crypto_portfolio/data/gecko_api/dto/search/search_dto.dart';
import 'package:dio/dio.dart';

class GeckoSearchSource {
  final Dio _dio;
  GeckoSearchSource(this._dio);

  static const String _path = '/api/v3/search/';

  Future<SearchDTO> search(String query) async {
    final response = await _dio.get<Map<String, dynamic>>(
      _path,
      queryParameters: {'query': query},
    );
    return SearchDTO.fromJson(response.data!);
  }
}
