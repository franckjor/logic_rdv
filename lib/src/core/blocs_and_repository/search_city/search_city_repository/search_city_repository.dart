import 'dart:async';

import 'package:logic_rdv_v0/src/core/api_services/service/abstract_repository.dart';
import 'package:logic_rdv_v0/src/core/api_services/service/abstract_summary.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_reponse.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';

class SearchCityRepository extends AbstractRepository {
  Future getCityOrAddress(
      {required SearchCityRequest searchRequestByCity}) async {
    final String path = '/${getControllerName()}city/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: searchRequestByCity.toJson());
    SearchCityResponse searchCityResponse =
        SearchCityResponse.fromJson(response.toString())!;
    return searchCityResponse;
  }

  Future getNameForSearch(
      {required SearchNameRequest searchNameRequest}) async {
    final String path = '/${getControllerName()}city/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: searchNameRequest.toJson());
    SearchNameResponse searchNameResponse =
        SearchNameResponse.fromJson(response.toString())!;
    return searchNameResponse;
  }

  Future getListOfDoctor(
      {required ListOfDoctorRequest listOfDoctorRequest}) async {
    final String path = '/${getControllerName()}list/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: listOfDoctorRequest.toJson());
    ListOfDoctorReponse listOfDoctorResponse =
        ListOfDoctorReponse.fromJson(response.toString())!;
    return listOfDoctorResponse;
  }

  Future getMyAddressPosition(
      {required SearchDialogRequest searchDialogRequest}) async {
    final String path = '/${getControllerName()}adrlocalisation/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: searchDialogRequest.toJson());
    SearchDialogResponse searchDialogResponse =
        SearchDialogResponse.fromJson(response.toString())!;
    return searchDialogResponse;
  }

  Future getListOfDoctorAround(
      {required ListOfDoctorRequest listOfDoctorRequest}) async {
    final String path = '/${getControllerName()}list/';
    final String token = (await getTokenAuthorization()) ?? '';
    final response = await apiManager.postDynamicWithVerifyToken(token, path,
        data: listOfDoctorRequest.toJson());
    ListOfDoctorReponse listOfDoctorResponse =
        ListOfDoctorReponse.fromJson(response.toString())!;
    return listOfDoctorResponse;
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
