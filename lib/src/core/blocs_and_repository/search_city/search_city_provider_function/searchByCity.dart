import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/bloc/search.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_request.dart';

onSearchByCity({
  required BuildContext context,
  required String terms,
}) {
  Timer(Duration(seconds: 0), () {
    SearchCityRequest searchRequest = SearchCityRequest((builder) => builder
      ..kind = 'city'
      ..proxyIstelecons = '0'
      ..term = terms);
    BlocProvider.of<SearchBloc>(context)
      ..add(GetListOfCity(searchRequest: searchRequest));
  });
}

onSearchByName({required BuildContext context, required String terms, required String codePostal}) {
  SearchNameRequest searchNameRequest = SearchNameRequest((builder) => builder
    ..kind = 'name'
    ..proxyIstelecons = '0'
    ..cp = codePostal
    ..term = terms);

  BlocProvider.of<SearchBloc>(context)
    ..add(GetListOfName(searchRequest: searchNameRequest));
}

onSearchAddress(
    {required BuildContext context, required String address, required String codePostal, required String city}) {
  SearchDialogRequest searchDialogRequest =
      SearchDialogRequest((builder) => builder
        ..address = address
        ..city = city
        ..zip = codePostal);

  BlocProvider.of<SearchBloc>(context)
    ..add(GetAddressDialog(searchDialogRequest: searchDialogRequest));
}

getListOfDoctor(
    {required BuildContext context,
    required String cityOrOther,
    required String nameOrService,
    required String page,
    String? villeId,
    required String categoryId}) {
  ListOfDoctorRequest searchRequest = ListOfDoctorRequest((builder) => builder
    ..proxyNom = nameOrService
    ..proxyNomId = categoryId
    ..proxyPage = page
    ..proxySearch = ''
    ..proxyVille = cityOrOther
    ..proxyVilleId = villeId ?? '0');

  BlocProvider.of<SearchBloc>(context)
    ..add(GetListOfDoctor(searchRequest: searchRequest));
}

getListOfDoctorAround(
    {required BuildContext context,
    required String cityOrOther,
    required String nameOrService,
    required String page,
    String? villeId,
    required String categoryId}) {
  ListOfDoctorRequest searchRequest = ListOfDoctorRequest((builder) => builder
    ..proxyNom = nameOrService
    ..proxyNomId = categoryId
    ..proxyPage = page
    ..proxySearch = ''
    ..proxyVille = cityOrOther
    ..proxyVilleId = villeId ?? '0');

  BlocProvider.of<SearchBloc>(context)
    ..add(GetListOfDoctorAround(searchRequest: searchRequest));
}
