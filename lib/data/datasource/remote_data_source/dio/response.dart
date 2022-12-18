import 'package:dio/dio.dart';

extension ResponseOK on Response<Object?> {
  /// Checks if status code is 200 or 202.
  bool get isOK => statusCode == 200 || statusCode == 202;
}
