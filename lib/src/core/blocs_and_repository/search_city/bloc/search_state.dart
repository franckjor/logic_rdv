import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_reponse.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';

class SearchState extends Equatable {
  @override
  List<Object> get props => [];
}

class SearchStateEmpty extends SearchState {}

class SearchStateLoading extends SearchState {}

class SearchCityStateLoadingSuccess extends SearchState {
  final SearchCityResponse city;

  SearchCityStateLoadingSuccess({this.city});

  @override
  List<Object> get props => [city];

  @override
  String toString() => 'SearchStateLoadingSuccess {city : $city}';
}

class SearchNameStateLoadingSuccess extends SearchState {
  final SearchNameResponse name;

  SearchNameStateLoadingSuccess({this.name});

  @override
  List<Object> get props => [name];

  @override
  String toString() => 'SearchNameStateLoadingSuccess {name : $name}';
}

class ListOfDoctorStateLoadingSuccess extends SearchState {
  final ListOfDoctorReponse doctors;

  ListOfDoctorStateLoadingSuccess({this.doctors});

  @override
  List<Object> get props => [doctors];

  @override
  String toString() => 'ListOfDoctorStateLoadingSuccess {doctors : $doctors}';
}

class ListOfDoctorAroundStateLoadingSuccess extends SearchState {
  final ListOfDoctorReponse doctors;

  ListOfDoctorAroundStateLoadingSuccess({this.doctors});

  @override
  List<Object> get props => [doctors];

  @override
  String toString() =>
      'ListOfDoctorAroundStateLoadingSuccess {doctors : $doctors}';
}

class ListOfAddressDialogLoadingSuccess extends SearchState {
  final SearchDialogResponse address;

  ListOfAddressDialogLoadingSuccess({this.address});

  @override
  List<Object> get props => [address];

  @override
  String toString() => 'ListOfAddressDialogLoadingSuccess {address : $address}';
}

class SearchStateLoadingFailure extends SearchState {
  final String error;

  SearchStateLoadingFailure({@required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'SearchStateLoadingFailure { error: $error }';
}
