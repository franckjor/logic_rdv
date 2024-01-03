import 'package:dio/dio.dart';

import 'logging_interceptor.dart';

class ErrorInterceptor {
  LoggingInterceptor _loggingInterceptor;

  ErrorInterceptor(this._loggingInterceptor);

  DioError getErrorInterceptors(DioError dioError) {
    if (checkConnection(dioError)) {
      return dioError;
    }

    _loggingInterceptor.printError(dioError);
    return dioError;
  }

  /// Method to verify if there is a problem connecting to the internet so that we can show a message
  /// to the user with the problem
  ///
  /// This method checks if the DioError's type is related to network/connectivity issues
  bool checkConnection(DioError error) {
    if (error.type == DioErrorType.connectionTimeout ||
        error.type == DioErrorType.sendTimeout ||
        error.type == DioErrorType.receiveTimeout) {
      return true;
    }
    return false;
  }
}
