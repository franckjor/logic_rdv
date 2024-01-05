import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_apointment_time_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_paient_for_rdv_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/selected_patient_response_for_rdv.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/validate_rdv_summary_dto.dart';
import 'package:logic_rdv_v0/src/core/models/rdv_type/rdvType.dart';

class CreateAppointmentRepository extends AbstractRepository {
  Future getAppointmentType(
      {required CreateAppointmentRequest createAppointmentRequest}) async {
    final String path = '/${getControllerName()}create/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: createAppointmentRequest);
    CreateAppointmentResponse appointmentResponse =
        CreateAppointmentResponse.fromJson(response.toString())!;
    return appointmentResponse;
  }

  Future getAppointmentTimeAndDay(
      {required CreateAppointmentRequest createAppointmentRequest}) async {
    final String path = '/${getControllerName()}create/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: createAppointmentRequest);
    GetApointmentTimeResponse getApointmentTimeResponse =
        GetApointmentTimeResponse.fromJson(response.toString())!;
    return getApointmentTimeResponse;
  }

  Future getRdvTypeState(
      {required CreateAppointmentRequest createAppointmentRequest}) async {
    final String path = '/${getControllerName()}create/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: createAppointmentRequest);
    String type = response.data['data']['type'];
    String message = response.data['data']['headermessage'];
    RdvType _rdvType = RdvType(message: message, type: type, session: '', onclickData: '', onclickAction: '', appointment: '', stripeClientSecret: '');
    return _rdvType;
  }

  Future getAppointmentPatient(
      {required CreateAppointmentRequest createAppointmentRequest}) async {
    final String path = '/${getControllerName()}create/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: createAppointmentRequest);
    GetPaientForRdvResponse getPaientForRdvResponse =
        GetPaientForRdvResponse.fromJson(response.toString())!;
    return getPaientForRdvResponse;
  }

  Future selectPatientForAppointment(
      {required CreateAppointmentRequest createAppointmentRequest}) async {
    final String path = '/${getControllerName()}create/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: createAppointmentRequest);
    SelectedPatientResponseForRdv selectedPatientResponseForRdv =
        SelectedPatientResponseForRdv.fromJson(response.toString())!;
    return selectedPatientResponseForRdv;
  }

  Future validateAppointment(
      {required CreateAppointmentRequest createAppointmentRequest}) async {
    final String path = '/${getControllerName()}create/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: createAppointmentRequest);
    ValidateRdvSummaryDto validateRdvSummaryDto =
        ValidateRdvSummaryDto.fromJson(response.toString())!;
    return validateRdvSummaryDto;
  }

  Future validateAppointmentWithOutTc(
      {required CreateAppointmentRequest createAppointmentRequest}) async {
    final String path = '/${getControllerName()}create/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: createAppointmentRequest);
    GetApointmentTimeResponse validateRdvSummaryDto =
        GetApointmentTimeResponse.fromJson(response.toString())!;
    return validateRdvSummaryDto;
  }

  Future confirmAppointmentWithOutTc(
      {required CreateAppointmentRequest createAppointmentRequest}) async {
    final String path = '/${getControllerName()}create/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: createAppointmentRequest);
    GetApointmentTimeResponse validateRdvSummaryDto =
        GetApointmentTimeResponse.fromJson(response.toString())!;
    return validateRdvSummaryDto;
  }

  @override
  String getControllerName() {
    return 'appointment/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
