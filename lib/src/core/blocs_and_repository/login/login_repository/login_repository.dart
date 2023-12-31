import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/forgot_password_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_process_response_end.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_response.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_response.dart';

class LoginRepository extends AbstractRepository {
  Future loginStarted(
      {required LoginStartedRequest login}) async {
    final String path = '/${getControllerName()}login/process/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: login.toJson());
    LoginStartedResponse responseAuth =
        LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future loginSearchEmail(
      {required LoginStartedRequest login}) async {
    final String path = '/${getControllerName()}login/process/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: login.toJson());
    LoginStartedResponse responseAuth =
        LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future loginSearchPass(
      {required LoginStartedRequest login}) async {
    final String path = '/${getControllerName()}login/process/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: login.toJson());
    LoginProcessResponseEnd responseAuth =
        LoginProcessResponseEnd.fromJson(response.toString());
    return responseAuth;
  }

  Future loginForgotPass(
      {required LoginStartedRequest login}) async {
    final String path = '/${getControllerName()}login/process/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: login.toJson());
    LoginStartedResponse responseAuth =
        LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future loginForgotForSend(
      {required LoginStartedRequest login}) async {
    final String path = '/${getControllerName()}login/process/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: login.toJson());
    LoginStartedResponse responseAuth =
        LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future loginForNewPassword(
      {required LoginStartedRequest login}) async {
    final String path = '/${getControllerName()}login/process/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: login.toJson());
    LoginProcessResponseEnd responseAuth =
        LoginProcessResponseEnd.fromJson(response.toString());
    return responseAuth;
  }

  Future loginForNewCode(
      {required LoginStartedRequest login}) async {
    final String path = '/${getControllerName()}login/process/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: login.toJson());
    LoginStartedResponse responseAuth =
        LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future userLogin({required LoginRequest login}) async {
    final String path = '/${getControllerName()}login/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: login.toJson());
    LoginResponse responseAuth = LoginResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future forgotPassword(
      {required ForgotPasswordRequest forgotPasswordRequest}) async {
    final String path = '/${getControllerName()}forgot/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: forgotPasswordRequest.toJson());
    LoginResponse responseAuth = LoginResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future userVerification() async {}

  @override
  String getControllerName() {
    return '';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
