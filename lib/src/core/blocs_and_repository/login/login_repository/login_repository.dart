import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/forgot_password_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_process_response_end.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_response.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_response.dart';

class LoginRepository extends AbstractRepository {

  Future loginStarted({LoginStartedRequest login, String token}) async {
    final String path = '/${getControllerName()}login/process/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: login.toJson());
    LoginStartedResponse responseAuth = LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future loginSearchEmail({LoginStartedRequest login, String token}) async {
    final String path = '/${getControllerName()}login/process/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: login.toJson());
    LoginStartedResponse responseAuth = LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future loginSearchPass({LoginStartedRequest login, String token}) async {
    final String path = '/${getControllerName()}login/process/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: login.toJson());
    LoginProcessResponseEnd responseAuth = LoginProcessResponseEnd.fromJson(response.toString());
    return responseAuth;
  }

  Future loginForgotPass({LoginStartedRequest login, String token}) async {
    final String path = '/${getControllerName()}login/process/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: login.toJson());
    LoginStartedResponse responseAuth = LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future loginForgotForSend({LoginStartedRequest login, String token}) async {
    final String path = '/${getControllerName()}login/process/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: login.toJson());
    LoginStartedResponse responseAuth = LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future loginForNewPassword({LoginStartedRequest login, String token}) async {
    final String path = '/${getControllerName()}login/process/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: login.toJson());
    LoginProcessResponseEnd responseAuth = LoginProcessResponseEnd.fromJson(response.toString());
    return responseAuth;
  }
  Future loginForNewCode({LoginStartedRequest login, String token}) async {
    final String path = '/${getControllerName()}login/process/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: login.toJson());
    LoginStartedResponse responseAuth = LoginStartedResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future userLogin({LoginRequest login, String token}) async {
    final String path = '/${getControllerName()}login/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: login.toJson());
    LoginResponse responseAuth = LoginResponse.fromJson(response.toString());
    return responseAuth;
  }

  Future forgotPassword({ForgotPasswordRequest forgotPasswordRequest}) async {
    final String path = '/${getControllerName()}forgot/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
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
