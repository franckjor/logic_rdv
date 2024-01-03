import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_request.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_response.dart';

class GenerateAndCheckTokenRepository extends AbstractRepository {
  Future getTokenAuthorizationRequest(
      {required GetTokenRequest getTokenRequest}) async {
    final String path = '/${getControllerName()}get/';
    final String token = (await getAuthToken()) ?? '';
    final response =
        await apiManager.postDynamic(token, path, getTokenRequest.toJson());
    GetTokenResponse getToken = GetTokenResponse.fromJson(response.toString());
    return getToken;
  }

  Future verifyTokenAuthorizationRequest() async {
    final String path = '/${getControllerName()}check/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path);
    GetTokenResponse getToken = GetTokenResponse.fromJson(response.toString());
    return getToken;
  }

  @override
  String getControllerName() {
    return 'token/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
