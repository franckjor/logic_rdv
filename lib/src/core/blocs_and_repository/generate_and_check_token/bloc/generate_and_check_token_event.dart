import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_request.dart';

abstract class GenerateAndCheckTokenEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetTokenAuthorisationEvent extends GenerateAndCheckTokenEvent {
  final GetTokenRequest getTokenRequest;

  GetTokenAuthorisationEvent({required this.getTokenRequest});

  @override
  List<Object> get props => [getTokenRequest];

  @override
  String toString() =>
      'GetTokenAuthorisationEvent {getTokenRequest: $getTokenRequest}';
}

class CheckTokenAuthorisationEvent extends GenerateAndCheckTokenEvent {
  CheckTokenAuthorisationEvent();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'CheckTokenAuthorisationEvent {}';
}

class GetListOfDoctor extends GenerateAndCheckTokenEvent {
  // final String searchCaracter;

  GetListOfDoctor();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'GetListOfDoctor {}';
}
