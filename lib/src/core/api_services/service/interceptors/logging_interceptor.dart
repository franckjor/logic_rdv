import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

class LoggingInterceptor {
  void printError(DioError dioError) {
    final request = dioError.requestOptions;
    debugPrint(
        "<-- ${dioError.message} ${(request != null ? (request.baseUrl + request.path) : 'URL')}");
    debugPrint(
        "${dioError.response != null ? dioError.response!.data : 'Unknown Error'}");
    debugPrint("<-- End error");
  }

  void printSuccess(Response<dynamic> response) {
    final request = response.requestOptions;
    debugPrint(
        "<-- ${response.statusCode} ${(request != null ? (request.baseUrl + request.path) : 'URL')}");
    debugPrint("Headers:");
    response.headers?.forEach((k, v) => debugPrint('$k: $v'));
    debugPrint("Response: ${response.data}");
    debugPrint("<-- END HTTP");
  }

  RequestOptions printRequest(RequestOptions options) {
    debugPrint(
        "--> ${options.method != null ? options.method.toUpperCase() : 'METHOD'} ${"" + (options.baseUrl ?? "") + (options.path ?? "")}");
    debugPrint("Headers:");
    options.headers?.forEach((k, v) => debugPrint('$k: $v'));
    if (options.queryParameters != null) {
      debugPrint("queryParameters:");
      options.queryParameters?.forEach((k, v) => debugPrint('$k: $v'));
    }
    if (options.data != null) {
      debugPrint("Body: ${options.data}");
    }
    debugPrint(
        "--> END ${options.method != null ? options.method.toUpperCase() : 'METHOD'}");

    return options;
  }
}
