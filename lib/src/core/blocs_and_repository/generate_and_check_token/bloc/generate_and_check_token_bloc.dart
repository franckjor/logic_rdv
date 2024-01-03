import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/repository/generate_and_check_token.dart';

class GenerateAndCheckTokenBloc
    extends Bloc<GenerateAndCheckTokenEvent, GenerateAndCheckTokenState> {
  final GenerateAndCheckTokenRepository repository;

  GenerateAndCheckTokenBloc({required this.repository})
      : super(GenerateAndCheckTokenStateLoading());

  @override
  GenerateAndCheckTokenState get initialState =>
      GenerateAndCheckTokenStateLoading();

  @override
  Stream<GenerateAndCheckTokenState> mapEventToState(
      GenerateAndCheckTokenEvent event) async* {
    yield GenerateAndCheckTokenStateLoading();
    if (event is GetTokenAuthorisationEvent) {
      yield* _mapGetTokenAuthorizationToState(event);
    } else if (event is CheckTokenAuthorisationEvent) {
      yield* _mapVerifyTokenAuthorizationToState(event);
    }
  }

  Stream<GenerateAndCheckTokenState> _mapGetTokenAuthorizationToState(
      GetTokenAuthorisationEvent event) async* {
    try {
      final result = await repository.getTokenAuthorizationRequest(
          getTokenRequest: event.getTokenRequest);
      yield GenerateTokenStateLoadingSuccess(getToken: result);
    } catch (error) {
      yield GenerateAndCheckTokenStateLoadingFailure(error: error.toString());
    }
  }

  Stream<GenerateAndCheckTokenState> _mapVerifyTokenAuthorizationToState(
      CheckTokenAuthorisationEvent event) async* {
    try {
      final result = await repository.verifyTokenAuthorizationRequest();
      yield VerifyTokenStateLoadingSuccess(getToken: result);
    } catch (error) {
      yield GenerateAndCheckTokenStateLoadingFailure(error: error.toString());
    }
  }
}
