import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/remove_doctor_model/remove_doctor_request.dart';
import 'package:logic_rdv_v0/src/core/models/remove_doctor_model/remove_doctor_response.dart';

class RemoveDoctorRepository extends AbstractRepository {
  Future removeDoctor({required RemoveDoctorRequest request}) async {
    final String path = '/${getControllerName()}doctorremove/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: request.toJson());
    RemoveDoctorResponse removeDoctorResponse =
        RemoveDoctorResponse.fromJson(response.toString())!;
    return removeDoctorResponse;
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
