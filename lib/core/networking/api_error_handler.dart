import 'package:dio/dio.dart';

import 'api_constants.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  // late ApiErrorModel apiErrorModel;

  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(message: "connection to server faild");
        case DioExceptionType.cancel:
          return ApiErrorModel(message: "Request to the server was canceld");
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(message: "connection timeout with sever");
        case DioExceptionType.unknown:
          return ApiErrorModel(
              message: "connection to server faild due to internet connection");
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(
              message: "receive timeout in connection with the server");
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(
              message: "send timeout in connection with the sever");
        default:
          return ApiErrorModel(message: "something went wrong");
      }
    } else {
      // default error
      return ApiErrorModel(message: 'unexpected error occured');
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
      message: data['message'] ?? "something went wrong",
      code: data['code'],
      errors: data['data']);
}
