import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/patient/get_list_of_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_response_afert_create.dart';
import 'package:logic_rdv_v0/src/core/models/patient/remove_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/remove_patient_response.dart';

class PatientRepository extends AbstractRepository {
  Future addPatient({required PatientRequest patientRequest}) async {
    final String path = '/${getControllerName()}add/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: patientRequest.toJson());
    PatientResponseAfertCreate patientResponseAfertCreate =
        PatientResponseAfertCreate.fromJson(response.toString())!;
    return patientResponseAfertCreate;
  }

  Future modifyPatient({required PatientRequest patientRequest}) async {
    final String path = '/${getControllerName()}modify/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: patientRequest.toJson());
    RemovePatientResponse newPatient =
        RemovePatientResponse.fromJson(response.toString())!;
    return newPatient;
  }

  Future removePatient({required RemovePatientRequest removePatientRequest}) async {
    final String path = '/${getControllerName()}remove/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: removePatientRequest.toJson());
    RemovePatientResponse removePatientResponse =
        RemovePatientResponse.fromJson(response.toString())!;
    return removePatientResponse;
  }

  Future getListOfPatient(
      {required GetListOfPatientRequest getListOfPatientRequest}) async {
    final String path = '/${getControllerName()}list/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: getListOfPatientRequest.toJson());
    PatientResponseAfertCreate listOfPatients =
        PatientResponseAfertCreate.fromJson(response.toString())!;
    return listOfPatients;
  }

  @override
  String getControllerName() {
    return 'patients/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
