import 'package:Beyond/data/exceptions.dart';
import 'package:dio/dio.dart';

class ErrorHandlerInterceptor extends QueuedInterceptor {
  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    final statusCode = err.response?.statusCode ?? 0;

    if (statusCode >= 500) {
      final message = _extractErrorMessage(err.response?.data);
      handler.reject(
        DioException(
          requestOptions: err.requestOptions,
          response: err.response,
          type: err.type,
          error: ServerExceptions(message),
        ),
      );
      return;
    }

    handler.next(err);
  }

  String _extractErrorMessage(dynamic data) {
    if (data == null) return "Erro no servidor";

    if (data is Map<String, dynamic>) {
      if (data.containsKey("message") && data["message"] != null) {
        return data["message"].toString();
      }
      if (data.containsKey("error") && data["error"] != null) {
        return data["error"].toString();
      }
      if (data.containsKey("erro") && data["erro"] != null) {
        return data["erro"].toString();
      }
    }

    return data.toString();
  }
}
