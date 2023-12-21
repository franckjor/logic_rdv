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
  /// This is given by the Dio Error Type of `DEFAULT`
  bool checkConnection(DioException error) {
    if (error.type == DioExceptionType.unknown) {
      return true;
    }
    return false;
  }
}
