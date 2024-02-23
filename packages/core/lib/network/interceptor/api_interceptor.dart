import 'package:core/constants/network_constant.dart';
import 'package:dio/dio.dart';

class ApiInterceptor extends InterceptorsWrapper {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    options.headers.putIfAbsent('Access-Control-Allow-Headers',
        () => NetworkConstant.accessControlAllowHeaders);
    options.headers.putIfAbsent('Access-Control-Allow-Methods',
        () => NetworkConstant.accessControlAllowMethods);
    options.headers
        .putIfAbsent('Cache-Control', () => NetworkConstant.cacheControl);

    super.onRequest(options, handler);
  }
}
