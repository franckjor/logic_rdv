import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/constants/type_rdv_state.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/rdv_type/rdvType.dart';

class CheckStateRepository extends AbstractRepository {
  Future getRdvTypeState(
      {required CreateAppointmentRequest createAppointmentRequest}) async {
    RdvType _rdvType;
    final String path = '/${getControllerName()}create/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(
        token, path,
        data: createAppointmentRequest);
    String type = response.data['data']['type'];
    String message = response.data['data']['headermessage'];
    if (message != "" && type == TypeRdvState.apptcreneaux) {
      _rdvType = RdvType(
        message: message,
        type: type,
      );
    } else if (message != "") {
      _rdvType = RdvType(
        message: message,
        type: type,
      );
    } else {
      String session = response.data['data']['session'];
      String appointment = response.data['data']['data']['appointment'];
      String onclickAction = response.data['data']['data']
          ['apptbuttonvalidation']['onclick_action'];
      String onclickData =
          response.data['data']['data']['apptbuttonvalidation']['onclick_data'];
      String stripeClientSecret =
          response.data['data']['payment_intent']['stripeClientSecret'];
      _rdvType = RdvType(
          message: message,
          type: type,
          session: session,
          appointment: appointment,
          onclickAction: onclickAction,
          onclickData: onclickData,
          stripeClientSecret: stripeClientSecret);
    }

    return _rdvType;
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
