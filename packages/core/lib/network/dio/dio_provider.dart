import 'package:core/network/dio/dio_base_option.dart';
import 'package:core/network/interceptor/api_interceptor.dart';
import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../transformer/dio_transformer.dart';

class DioProvider {
  static Dio createDio(DioBaseOption dioBaseOption) {
    final dio = Dio();

    // Creating options object
    final options = BaseOptions(
      baseUrl: dioBaseOption.baseUrl,
      connectTimeout: Duration(seconds: dioBaseOption.connectTimeout),
      receiveTimeout: Duration(seconds: dioBaseOption.receiveTimeOut),
      headers: dioBaseOption.headers,
    );

    dio.options = options;

    final prettyDioLogger = PrettyDioLogger(
      request: true,
      requestBody: true,
      requestHeader: true,
      responseBody: true,
      responseHeader: true,
    );
    dio.interceptors.add(ApiInterceptor());

    dio.interceptors.add(prettyDioLogger);

    dio.transformer = DioTransformer();

    return dio;
  }

  static updateHeaders(Dio dio, Map<String, dynamic> inputHeaders) {
    dio.options = dio.options.copyWith(headers: inputHeaders);
  }
}
