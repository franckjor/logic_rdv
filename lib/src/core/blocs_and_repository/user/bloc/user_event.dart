import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/token_user/token_user.dart';
import 'package:logic_rdv_v0/src/core/models/user_model/user_request.dart';

abstract class UserEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class UpdateUser extends UserEvent {
  final UserRequest userRequest;

  UpdateUser({required this.userRequest});

  @override
  List<Object> get props => [userRequest];

  @override
  String toString() => 'UpdateUser {searchRequest: $userRequest}';
}

class CheckOutUser extends UserEvent {
  final TokenUser tokenUser;

  CheckOutUser({required this.tokenUser});

  @override
  List<Object> get props => [tokenUser];

  @override
  String toString() => 'CheckOutUser {tokenUser: $tokenUser}';
}
