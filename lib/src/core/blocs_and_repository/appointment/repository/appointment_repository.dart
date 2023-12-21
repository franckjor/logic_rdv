import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/cancel_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/cancel_appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_appointment_request.dart';

class AppointmentRepository extends AbstractRepository {
  Future getAppointment({required GetAppointmentRequest appointmentRequest}) async {
    final String path = '/${getControllerName()}appointments/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: appointmentRequest.toJson());
    AppointmentResponse appointmentResponse =
        AppointmentResponse.fromJson(response.toString());
    return appointmentResponse;
  }

  Future appointmentCancel(
      {required CancelAppointmentRequest cancelAppointmentRequest}) async {
    final String path = '/${getControllerName()}appcancel/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: cancelAppointmentRequest.toJson());
    CancelAppointmentResponse cancelAppointmentResponse =
        CancelAppointmentResponse.fromJson(response.toString());
    return cancelAppointmentResponse;
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
