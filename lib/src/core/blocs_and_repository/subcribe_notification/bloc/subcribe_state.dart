import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/subscribe_request.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/verify_notif_subscribtion.dart';

class SubscribeState extends Equatable {
  @override
  List<Object> get props => [];
}

class SubscribeStateEmpty extends SubscribeState {}

class SubscribeStateLoading extends SubscribeState {}

class SubscribeStateLoadingSuccess extends SubscribeState {
  final SubscribeResponse subscribeResponse;

  SubscribeStateLoadingSuccess({required this.subscribeResponse});
  @override
  List<Object> get props => [subscribeResponse];

  @override
  String toString() =>
      'SubscribeStateLoadingSuccess {subscribeResponse : $subscribeResponse}';
}

class UnSubscribeStateLoadingSuccess extends SubscribeState {
  final SubscribeResponse subscribeResponse;

  UnSubscribeStateLoadingSuccess({required this.subscribeResponse});
  @override
  List<Object> get props => [subscribeResponse];
  @override
  String toString() =>
      'UnSubscribeStateLoadingSuccess {subscribeResponse :$subscribeResponse}';
}

class IsSubscribeStateLoadingSuccess extends SubscribeState {
  final VerifyNotifSubscribtion verifyNotifSubscribtion;

  IsSubscribeStateLoadingSuccess({required this.verifyNotifSubscribtion});
  @override
  List<Object> get props => [verifyNotifSubscribtion];
  @override
  String toString() =>
      'IsSubscribeStateLoadingSuccess {verifyNotifSubscribtion :$verifyNotifSubscribtion}';
}

class SubscribeStateLoadingFailure extends SubscribeState {
  final String error;

  SubscribeStateLoadingFailure({required this.error});

  @override
  List<Object> get props => [error];
  @override
  String toString() => 'SearchStateLoadingFailure { error:  $error}';
}
