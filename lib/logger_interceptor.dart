import 'package:dio/dio.dart';
import 'package:logger/logger.dart';

class LoggerInterceptor extends Interceptor {
  final Logger _logger = Logger();

  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    _logger.i("REQUEST[${options.method}] => PATH: ${options.path} => DATA: ${options.data}");
    super.onRequest(options, handler);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    _logger.i("RESPONSE[${response.statusCode}] => DATA: ${response.data}");
    super.onResponse(response, handler);
  }

  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    _logger.e("ERROR[${err.response?.statusCode}] => MESSAGE: ${err.message}");
    super.onError(err, handler);
  }
}
