import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/create_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/create_patient_response.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/inscription_check_request.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/inscription_check_response.dart';

class InscriptionRapidRepository extends AbstractRepository {
  Future verifyDoctor({required InscriptionCheckRequest inscriptionCheckRequest}) async {
    final String path = '/${getControllerName()}check/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: inscriptionCheckRequest.toJson());
    InscriptionCheckResponse verifyDoctor =
        InscriptionCheckResponse.fromJson(response.toString());
    return verifyDoctor;
  }

  Future createPatientAccount(
      {required CreatePatientRequest createPatientRequest}) async {
    final String path = '/${getControllerName()}add/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: createPatientRequest.toJson());
    CreatePatientResponse createPatientResponse =
        CreatePatientResponse.fromJson(response.toString());
    return createPatientResponse;
  }

  @override
  String getControllerName() {
    return 'inscription/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
