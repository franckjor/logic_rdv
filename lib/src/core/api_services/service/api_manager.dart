import 'dart:async';
import 'dart:core';

import 'package:dio/adapter.dart';
import 'package:dio/dio.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart';
import 'package:universal_io/io.dart';

import '../env.dart';
import 'exceptions.dart';
import 'interceptors/interceptors.dart';
import 'service_constant.dart';

class ApiManager {
  Dio _dio;
  final Logger _logger = new Logger("ApiEndpoints");

  ApiManager() {
    _dio = Dio();
    _dio.options.connectTimeout = connectionTimeout;
    _dio.options.receiveTimeout = connectionReadTimeout;

    //Disable Certificate verification for development purpose (accept every
    // connection)

    // HttpClient client = new HttpClient();
    // client.badCertificateCallback =
    //     ((X509Certificate cert, String host, int port) => true);

    (_dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
        (client) {
      client.badCertificateCallback =
          (X509Certificate cert, String host, int port) {
        return true;
      };
    };

    var loggingInterceptor = getLoggingInterceptor();
    var errorInterceptor = getErrorInterceptor(loggingInterceptor);
    var responseInterceptor = getResponseInterceptor(loggingInterceptor);
    var requestInterceptor = getRequestInterceptor(loggingInterceptor);

    _dio.interceptors.add(InterceptorsWrapper(
        onRequest: (RequestOptions options) async =>
            await requestInterceptor.getRequestInterceptor(options),
        onResponse: (Response response) =>
            responseInterceptor.getResponseInterceptor(response),
        onError: (DioError dioError) =>
            errorInterceptor.getErrorInterceptors(dioError)));
  }

  String _getFullUrlPath(String path) {
    return '$API_ENDPOINT' + path;
  }

  String _getFullUrlPathPdf(String path) {
    return '$API_ENDPOINT_PDF' + path;
  }

  Map<String, String> _getHttpHeaders(String authToken) {
    if (authToken != null) {
      return {
        "content-type": "application/x-www-form-urlencoded",
        'Charset': 'utf-8',
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "authorization": "$authToken"
      };
    } else {
      return {
        "content-type": "application/x-www-form-urlencoded",
        'Charset': 'utf-8',
        "Access-Control-Allow-Origin": "*",
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
      };
    }
  }

  Map<String, String> _getHttpHeadersPayment(String authToken) {
    return {
      "content-type": "application/x-www-form-urlencoded",
      "Authorization": "Bearer $authToken"
    };
  }

  Map<String, String> _getHttpHeadersAuthorization(String authToken) {
    if (authToken != null) {
      return {
        "content-type": "application/x-www-form-urlencoded",
        "Access-Control-Allow-Origin": "*",
        'Charset': 'utf-8',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
        "X-LOGICRDV-AUTH": "$authToken"
      };
    } else {
      return {
        "content-type": "application/x-www-form-urlencoded",
        "Access-Control-Allow-Origin": "*",
        'Charset': 'utf-8',
        "Access-Control-Allow-Methods": "POST, GET, OPTIONS, PUT, DELETE, HEAD",
      };
    }
  }

  dynamic _handleError(dynamic error, dynamic stacktrace) {
    if (error is DioError) {
      throw handleDioError(error);
    } else {
      throw BadRequestException(
          "Exception occured: $error stack trace: ${stacktrace.toString()}");
    }
  }

  Future<dynamic> get({String token, String path}) async {
    String url = _getFullUrlPathPdf(path);
    try {
      Response response = await _dio.get(
        Uri.encodeFull(url),
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response.toString();
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> getDynamic(String token, String urlBasePath) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.get(
        Uri.encodeFull(url),
        options: Options(headers: _getHttpHeadersAuthorization(token)),
      );
      return response;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> put(String token, String path, {dynamic data}) async {
    String url = _getFullUrlPath(path);
    try {
      Response response = await _dio.put(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response.toString();
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> putDynamic(String token, String path, {dynamic data}) async {
    String url = _getFullUrlPath(path);
    try {
      Response response = await _dio.put(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> delete(String token, String path) async {
    String url = _getFullUrlPath(path);
    try {
      Response response = await _dio.delete(
        Uri.encodeFull(url),
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response.toString();
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> postDynamic(
      String token, String urlBasePath, dynamic data) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.post(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> postDynamicPayment(
      String token, String urlBasePath, dynamic data) async {
    try {
      Response response = await _dio.post(
        Uri.encodeFull(urlBasePath),
        data: data,
        options: Options(
            contentType: "application/x-www-form-urlencoded",
            headers: {"Authorization": "Bearer $token"}),
      );
      return response;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> postDynamicWithVerifyToken(String token, String urlBasePath,
      {dynamic data}) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.post(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeadersAuthorization(token)),
      );
      return response;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<String> postWithoutToken(String urlBasePath, {dynamic data}) async {
    return post(urlBasePath, null, data: data);
  }

  Future<String> post(String urlBasePath, String token, {dynamic data}) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.post(
        Uri.encodeFull(url),
        data: data,
        options: Options(headers: _getHttpHeaders(token)),
      );
      return response.toString();
    } catch (error, stacktrace) {
      return _handleError(error, stacktrace);
    }
  }

  Future<dynamic> uploadFile(String authToken, String urlBasePath,
      FormData formData, int fileLength) async {
    String url = _getFullUrlPath(urlBasePath);
    try {
      Response response = await _dio.post(url,
          data: formData,
          options: Options(headers: {
            "authorization": "$authToken",
            Headers.contentLengthHeader: fileLength,
          }));
      return response.data;
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  Future<dynamic> uploadFiles(
      String authToken, String url, data, Map<String, File> files) async {
    Map<String, MultipartFile> fileMap = {};
    for (MapEntry fileEntry in files.entries) {
      File file = fileEntry.value;
      String fileName = basename(file.path.split('/').last);
      fileMap[fileEntry.key] = MultipartFile(
        file.openRead(),
        await file.length(),
        filename: fileName,
      );
    }
    data.addAll(fileMap);
    try {
      var formData = FormData.fromMap(data);
      Dio dio = new Dio();
      Response response = await dio.post(url,
          data: formData,
          options: Options(
            headers: {
              "content-type": "application/json",
              "authorization": "Bearer $authToken",
            },
            contentType: 'multipart/form-data',
          ));
      return response.toString();
    } catch (error, stacktrace) {
      _handleError(error, stacktrace);
    }
  }

  // Future<Response> downloadFileAsResponse(
  //     String urlBasePath, AssetRequest assetRequest, String token) async {
  //   String url = _getFullUrlPath(urlBasePath);
  //   try {
  //     return await _dio.post(
  //       Uri.encodeFull(url),
  //       data: assetRequest.toJson(),
  //       options: Options(
  //         headers: _getHttpHeaders(token),
  //         responseType: ResponseType.bytes,
  //       ),
  //     );
  //   } catch (error, stacktrace) {
  //     return _handleError(error, stacktrace);
  //   }
  // }

  // Future<File> downloadFile(
  //     String urlBasePath, AssetRequest assetRequest, String token) async {
  //   try {
  //     Response response =
  //     await this.downloadFileAsResponse(urlBasePath, assetRequest, token);
  //     Directory tempDir = await getTemporaryDirectory();
  //     String tempPath = tempDir.path;
  //     File file = new File('$tempPath/${response.headers.map['filename']}');
  //     return file.writeAsBytes(response.data);
  //   } catch (error, stacktrace) {
  //     return _handleError(error, stacktrace);
  //   }
  // }
}
