import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class GeckoDioClient {
  GeckoDioClient(this._dio);
  final Dio _dio;
  final List<_GeckoCacheItem> _cache = [];

  Future<T> getData<T>(GeckoGetParams params) async {
    final response = await _dio.get<T>(params.path, queryParameters: params.queryParameters);
    return response.data!;
  }

  void _updateCache({_GeckoCacheItem? item}) {
    if (item == null) {
      _cache.removeWhere((e) => false);
    }else {
      _cache.add(item);
    }
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
