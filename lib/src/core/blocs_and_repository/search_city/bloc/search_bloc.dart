import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/bloc/search.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/search_city_repository/search_city_repository.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final SearchCityRepository repository;

  SearchBloc({required this.repository}) : super(SearchStateLoading());

  @override
  SearchState get initialState => SearchStateLoading();

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    yield SearchStateLoading();
    if (event is GetListOfCity) {
      yield* _mapGetListOfCityToState(event);
    } else if (event is GetListOfName) {
      yield* _mapGetListOfNameToState(event);
    } else if (event is GetListOfDoctor) {
      yield* _mapGetListOfDoctorToState(event);
    } else if (event is GetAddressDialog) {
      yield* _mapGetListOfAddressToState(event);
    } else if (event is GetListOfDoctorAround) {
      yield* _mapGetListOfDoctorAroundToState(event);
    }
  }

  Stream<SearchState> _mapGetListOfCityToState(GetListOfCity event) async* {
    try {
      final cityList = await repository.getCityOrAddress(
          searchRequestByCity: event.searchRequest);
      yield SearchCityStateLoadingSuccess(city: cityList);
    } catch (error) {
      yield SearchStateLoadingFailure(error: error.toString())!;
    }
  }

  Stream<SearchState> _mapGetListOfNameToState(GetListOfName event) async* {
    try {
      final nameList = await repository.getNameForSearch(
          searchNameRequest: event.searchRequest);
      yield SearchNameStateLoadingSuccess(name: nameList);
    } catch (error) {
      yield SearchStateLoadingFailure(error: error.toString())!;
    }
  }

  Stream<SearchState> _mapGetListOfDoctorToState(GetListOfDoctor event) async* {
    try {
      final doctorList = await repository.getListOfDoctor(
          listOfDoctorRequest: event.searchRequest);
      yield ListOfDoctorStateLoadingSuccess(doctors: doctorList);
    } catch (error) {
      yield SearchStateLoadingFailure(error: error.toString())!;
    }
  }

  Stream<SearchState> _mapGetListOfDoctorAroundToState(
      GetListOfDoctorAround event) async* {
    try {
      final doctorList = await repository.getListOfDoctorAround(
          listOfDoctorRequest: event.searchRequest);
      yield ListOfDoctorAroundStateLoadingSuccess(doctors: doctorList);
    } catch (error) {
      yield SearchStateLoadingFailure(error: error.toString())!;
    }
  }

  Stream<SearchState> _mapGetListOfAddressToState(
      GetAddressDialog event) async* {
    try {
      final address = await repository.getMyAddressPosition(
          searchDialogRequest: event.searchDialogRequest);
      yield ListOfAddressDialogLoadingSuccess(address: address);
    } catch (error) {
      yield SearchStateLoadingFailure(error: error.toString())!;
    }
  }
}
