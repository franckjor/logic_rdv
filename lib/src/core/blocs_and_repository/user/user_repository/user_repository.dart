import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/remove_user/remove_user_response.dart';
import 'package:logic_rdv_v0/src/core/models/token_user/token_user.dart';
import 'package:logic_rdv_v0/src/core/models/user_model/user_request.dart';
import 'package:logic_rdv_v0/src/core/models/user_model/user_response.dart';

class UserRepository extends AbstractRepository {
  Future updateAccount({required UserRequest userRequest}) async {
    final String path = '/${getControllerName()}setinfos/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: userRequest.toJson());
    UserResponse userResponse = UserResponse.fromJson(response.toString());
    return userResponse;
  }

  Future checkout({required TokenUser tokenUser}) async {
    final String path = '/${getControllerName()}checkout/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: tokenUser.toJson());
    RemoveUserResponse checkoutReponse =
        RemoveUserResponse.fromJson(response.toString());
    return checkoutReponse;
  }

  @override
  String getControllerName() {
    return 'account/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
