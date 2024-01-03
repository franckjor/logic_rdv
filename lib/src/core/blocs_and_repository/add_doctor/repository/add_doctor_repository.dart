import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_request.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_response.dart';

class AddDoctorRepository extends AbstractRepository {
  Future addDoctor({AddDoctorRequest addDoctorRequest}) async {
    final String path = '/${getControllerName()}doctoradd/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: addDoctorRequest.toJson());
    AddDoctorResponse _addDoctorResponse =
        AddDoctorResponse.fromJson(response.toString());
    return _addDoctorResponse;
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
