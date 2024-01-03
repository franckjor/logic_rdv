import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_request.dart';

abstract class SearchEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetListOfCity extends SearchEvent {
  final SearchCityRequest searchRequest;

  GetListOfCity({this.searchRequest});

  @override
  List<Object> get props => [searchRequest];

  @override
  String toString() => 'GetListOfCity {searchRequest: $searchRequest}';
}

class GetListOfName extends SearchEvent {
  final SearchNameRequest searchRequest;

  GetListOfName({this.searchRequest});

  @override
  List<Object> get props => [searchRequest];

  @override
  String toString() => 'GetListOfName {searchRequest: $searchRequest}';
}

class GetListOfDoctor extends SearchEvent {
  final ListOfDoctorRequest searchRequest;

  GetListOfDoctor({this.searchRequest});

  @override
  List<Object> get props => [searchRequest];

  @override
  String toString() => 'GetListOfDoctor {searchRequest: $searchRequest}';
}

class GetListOfDoctorAround extends SearchEvent {
  final ListOfDoctorRequest searchRequest;

  GetListOfDoctorAround({this.searchRequest});

  @override
  List<Object> get props => [searchRequest];

  @override
  String toString() => 'GetListOfDoctorAround {searchRequest: $searchRequest}';
}

class GetAddressDialog extends SearchEvent {
  final SearchDialogRequest searchDialogRequest;

  GetAddressDialog({this.searchDialogRequest});

  @override
  List<Object> get props => [searchDialogRequest];

  @override
  String toString() =>
      'GetAddressDialog {searchDialogRequest: $searchDialogRequest}';
}
