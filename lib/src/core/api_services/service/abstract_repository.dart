import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'abstract_dto.dart';
import 'abstract_summary.dart';
import 'api_manager.dart';

abstract class AbstractRepository<D extends AbstractDto,
    S extends AbstractSummaryDto> {
  final ApiManager apiManager = ApiManager();

  Future<String?> getAuthToken() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString("token");
  }

  Future<String?> getTokenAuthorization() async {
    SharedPreferences preferences = await SharedPreferences.getInstance();
    return preferences.getString(PreferenceKey.tokenAuthorizationKey);
  }

  Future<S> create(D dto) async {
    final String _createPath = '/${getControllerName()}/create';
    // Retrieve the token
    final String? authToken = await getAuthToken();
    final responseJson =
        await apiManager.post(_createPath, authToken ?? "", data: dto.toJson());
    return toSummaryDto(responseJson);
  }

  Future<void> delete(int id) async {
    assert(id != null);
    String _deletePath = '/${getControllerName()}/delete';
    // Retrieve the token
    final String? authToken = await getAuthToken();
    await apiManager.delete(authToken ?? "", _deletePath + "/$id");
  }

  Future<S> update(D dto) async {
    String _updatePath = '/${getControllerName()}/edit';
    final String? authToken = await getAuthToken();
    final responseJson =
        await apiManager.put(authToken ?? "", _updatePath, data: dto.toJson());
    return toSummaryDto(responseJson);
  }

  // Future<S> getById(int id) async {
  //   assert(id != null);
  //   final String _findByIdPath = '/${getControllerName()}/detail/';
  //   final responseJson =
  //       await apiManager.get(await getAuthToken(), _findByIdPath + "$id");
  //   return toSummaryDto(responseJson);
  // }
  //
  // Future<S> getByLogin(String login) async {
  //   assert(login != null);
  //   final String _findByIdPath = '/${getControllerName()}/detail/';
  //   final responseJson =
  //       await apiManager.get(await getAuthToken(), _findByIdPath + "$login");
  //   return toSummaryDto(responseJson);
  // }

  String getControllerName();

  S toSummaryDto(String json);
}
