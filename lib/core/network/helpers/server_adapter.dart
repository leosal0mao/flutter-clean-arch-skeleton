import 'package:dio/dio.dart';

import 'response_data.dart';

abstract class ServerAdapter {
  Future<ResponseData> get({
    required Map<String, dynamic> queries,
    required String url,
    RequestOptions options,
  });
}
