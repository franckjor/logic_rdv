import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/app_version/app_version_summary.dart';

class VersionRepository extends AbstractRepository {
  Future getVersion() async {
    final String path = '/${getControllerName()}get/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.getDynamic(token, path);
    AppVersionSummary? _versionResponse =
        AppVersionSummary.fromJson(response.toString());
    return _versionResponse;
  }

  @override
  String getControllerName() {
    return 'version/';
  }

  @override
  AbstractSummaryDto toSummaryDto(String json) {
    throw UnimplementedError();
  }
}
