import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/fixer_rdv_doctor_response/fixer_rdv_doctor_response.dart';
import 'package:logic_rdv_v0/src/core/models/token_user/token_user.dart';

class FixerRdvDoctorRepository extends AbstractRepository {
  Future fixerRdvDoctorGetItForTokenUser({ required TokenUser tokenUser}) async {
    final String path = '/${getControllerName()}doctors/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: tokenUser.toJson());
    FixerRdvDoctorResponse responseAuth =
        FixerRdvDoctorResponse.fromJson(response.toString());
    return responseAuth;
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
