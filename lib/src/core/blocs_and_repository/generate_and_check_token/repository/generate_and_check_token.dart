import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_request.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_response.dart';

class GenerateAndCheckTokenRepository extends AbstractRepository {
  Future getTokenAuthorizationRequest({required GetTokenRequest getTokenRequest}) async {
    final String path = '/${getControllerName()}get/';
    final response = await apiManager.postDynamic(
        await getAuthToken(), path, getTokenRequest.toJson());
    GetTokenResponse getToken = GetTokenResponse.fromJson(response.toString());
    return getToken;
  }

  Future verifyTokenAuthorizationRequest() async {
    final String path = '/${getControllerName()}check/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path);
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
