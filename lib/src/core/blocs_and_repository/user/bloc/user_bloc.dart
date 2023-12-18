import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/user/bloc/user.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/user/user_repository/user_repository.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final UserRepository repository;

  UserBloc({@required this.repository}) : super(UserStateLoading());

  @override
  UserState get initialState => UserStateLoading();

  @override
  Stream<UserState> mapEventToState(UserEvent event) async* {
    yield UserStateLoading();
    if (event is UpdateUser) {
      yield* _mapUpdateUserToState(event);
    } else if (event is CheckOutUser) {
      yield* _mapCheckOutUserToState(event);
    }
  }

  Stream<UserState> _mapUpdateUserToState(UpdateUser event) async* {
    try {
      final userUpdate =
          await repository.updateAccount(userRequest: event.userRequest);
      yield UserStateLoadingSuccess(userResponse: userUpdate);
    } catch (error) {
      yield UserStateLoadingFailure(error: error.toString());
    }
  }

  Stream<UserState> _mapCheckOutUserToState(CheckOutUser event) async* {
    try {
      final userUpdate = await repository.checkout(tokenUser: event.tokenUser);
      yield UserCheckoutStateLoadingSuccess(userResponse: userUpdate);
    } catch (error) {
      yield UserStateLoadingFailure(error: error.toString());
    }
  }
}
