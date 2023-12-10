import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

import 'gecko_api_client.dart';

class GeckoDioClient {
  GeckoDioClient(this._dio);
  final Dio _dio;
  final List<_GeckoCacheItem> _cache = [];

  Future<T> getData<T>(GeckoGetParams params) async {
    _cache.removeWhere((e) {
      return DateTime.now().difference(e.timeStamp).inSeconds >
          GeckoApiClient.waitingForRequestRetry;
    });
    final _GeckoCacheItem? item = _cache.where((e) => e.params == params).firstOrNull;
    if (item != null) return item.response;
    final response = await _dio.get<T>(params.path, queryParameters: params.queryParameters);
    _cache.add(
      _GeckoCacheItem(
        params: params,
        response: response.data,
        timeStamp: DateTime.now(),
      ),
    );
    return response.data!;
  }
}

class GeckoGetParams extends Equatable {
  final String path;
  final Map<String, dynamic>? queryParameters;

  const GeckoGetParams(this.path, {this.queryParameters});

  @override
  List<Object?> get props => [path, queryParameters];
}

class _GeckoCacheItem extends Equatable {
  final GeckoGetParams params;
  final dynamic response;
  final DateTime timeStamp;

  const _GeckoCacheItem({
    required this.params,
    required this.response,
    required this.timeStamp,
  });

  @override
  List<Object?> get props => [params, response, timeStamp];
}
