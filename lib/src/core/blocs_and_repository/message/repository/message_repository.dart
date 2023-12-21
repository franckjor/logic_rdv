import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/message_rdv/message_request.dart';
import 'package:logic_rdv_v0/src/core/models/message_rdv/message_response.dart';

class MessageRepository extends AbstractRepository {
  Future getMessage({required MessageRequest messageRequest}) async {
    final String path = '/${getControllerName()}messages/';
    final response = await apiManager.postDynamicWithVerifyToken(
        await getTokenAuthorization(), path,
        data: messageRequest.toJson());
    MessageResponse messageResponse =
        MessageResponse.fromJson(response.toString());
    return messageResponse;
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
