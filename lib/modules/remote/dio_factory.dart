import 'package:Beyond/modules/remote/interceptors/error_handler_interceptor.dart';
import 'package:dio/dio.dart';

class DioFactory {
  static Dio create({
    required String baseUrl,
    List<Interceptor> interceptors = const [],
  }) {
    final dio = Dio(
      BaseOptions(
        baseUrl: baseUrl,
        connectTimeout: const Duration(seconds: 30),
        receiveTimeout: const Duration(seconds: 30),
      ),
    );

    dio.interceptors.add(ErrorHandlerInterceptor());
    dio.interceptors.addAll(interceptors);

    dio.interceptors.add(
      LogInterceptor(
        requestBody: true,
        responseBody: true,
        requestHeader: true,
        responseHeader: false,
      ),
    );

    return dio;
  }
}
