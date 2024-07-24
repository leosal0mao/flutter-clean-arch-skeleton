import 'package:dio/dio.dart';

class ErrorInterceptor extends Interceptor {
  ErrorInterceptor();

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    ErrorEvent(path: err.requestOptions.path, response: err.response);
    super.onError(err, handler);
  }
}

class ErrorEvent {
  final String path;
  final Response? response;

  ErrorEvent({required this.path, this.response});
}
