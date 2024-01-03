import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_response.dart';

class GenerateAndCheckTokenState extends Equatable {
  @override
  List<Object> get props => [];
}

class GenerateAndCheckTokenStateEmpty extends GenerateAndCheckTokenState {}

class GenerateAndCheckTokenStateLoading extends GenerateAndCheckTokenState {}

class GenerateTokenStateLoadingSuccess extends GenerateAndCheckTokenState {
  final GetTokenResponse getToken;
  GenerateTokenStateLoadingSuccess({required this.getToken});

  @override
  List<Object> get props => [getToken];

  @override
  String toString() =>
      'GenerateTokenStateLoadingSuccess {getToken : $getToken}';
}

class VerifyTokenStateLoadingSuccess extends GenerateAndCheckTokenState {
  final GetTokenResponse getToken;

  VerifyTokenStateLoadingSuccess({required this.getToken});

  @override
  List<Object> get props => [getToken];

  @override
  String toString() => 'VerifyTokenStateLoadingSuccess {getToken : $getToken}';
}

class GenerateAndCheckTokenStateLoadingFailure
    extends GenerateAndCheckTokenState {
  final String error;

  GenerateAndCheckTokenStateLoadingFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() =>
      'GenerateAndCheckTokenStateLoadingFailure { error: $error }';
}
