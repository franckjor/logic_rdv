import 'package:dio/dio.dart';

class AppException implements Exception {
  final _message;

  AppException([this._message]);

  String toString() {
    return "$_message";
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super(message);
}

class BadRequestException extends AppException {
  BadRequestException([message]) : super(message);
}

class UnauthorizedException extends AppException {
  UnauthorizedException([message]) : super(message);
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super(("error.invalid_data"));
}

AppException handleResponseError(Response response) {
  dynamic errorJsonValue = response.data;
  String errorMessage = errorJsonValue['message'] ?? errorJsonValue['message'];

  switch (response.statusCode) {
    case 400:
      throw BadRequestException(errorMessage);
    case 401:
      throw BadRequestException(errorMessage);
    case 403:
    case 404:
      throw UnauthorizedException(errorMessage);
    case 500:
    default:
      throw FetchDataException(errorMessage);
  }
}

AppException handleDioException(DioException error) {
  switch (error.type) {
    case DioExceptionType.cancel:
      throw FetchDataException(("Votre demande a été annulée."));
    case DioExceptionType.connectionTimeout:
      throw FetchDataException(
          ("Vérifier l'état de votre connexion internet."));
    case DioExceptionType.sendTimeout:
      throw FetchDataException(("Attente très longue, réessayer."));
    case DioExceptionType.receiveTimeout:
      throw FetchDataException(("Durée d'exécution de la requête terminer."));
    case DioExceptionType.badResponse:
      throw handleResponseError(error.message as Response);
    default:
      throw AppException(("server"));
  }
}
