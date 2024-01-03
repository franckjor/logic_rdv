import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/telecons_model/teleconsultationrequest.dart';
import 'package:logic_rdv_v0/src/core/models/telecons_model/teleconsultationresponse.dart';

class TeleconsRepository extends AbstractRepository {
  Future getTelecons({TeleconsRequest teleconsRequest}) async {
    final String path = '/${getControllerName()}get/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: teleconsRequest.toJson());
    TeleconsResponse teleconsResponse =
        TeleconsResponse.fromJson(response.toString());
    return teleconsResponse;
  }

  @override
  String getControllerName() {
    return 'teleconsultation/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
