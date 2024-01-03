import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_details_model/search_doctor_details_request.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_details_model/search_doctor_details_response.dart';

class DoctorDetailsRepository extends AbstractRepository {
  Future getDoctorDetails(
      {SearchDoctorDetailsRequest searchDoctorDetail}) async {
    final String path = '/${getControllerName()}profil/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: searchDoctorDetail.toJson());
    SearchDoctorDetailsResponse _searchDoctorDetailsResponse =
        SearchDoctorDetailsResponse.fromJson(response.toString());
    return _searchDoctorDetailsResponse;
  }

  @override
  String getControllerName() {
    return 'search/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
