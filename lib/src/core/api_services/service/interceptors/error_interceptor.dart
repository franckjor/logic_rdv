import 'package:dio/dio.dart';

import 'logging_interceptor.dart';

class ErrorInterceptor {
  LoggingInterceptor _loggingInterceptor;

  ErrorInterceptor(this._loggingInterceptor);

  DioException getErrorInterceptors(DioException DioException) {
    if (checkConnection(DioException)) {
      return DioException;
    }

    _loggingInterceptor.printError(DioException);
    return DioException;
  }

  /// Method to verify if there is a problem connecting to the internet so that we can show a message
  /// to the user with the problem
  ///
  /// This method checks if the DioException's type is related to network/connectivity issues
  bool checkConnection(DioException error) {
    if (error.type == DioExceptionType.connectionTimeout ||
        error.type == DioExceptionType.sendTimeout ||
        error.type == DioExceptionType.receiveTimeout) {
      return true;
    }
    return false;
  }
}
