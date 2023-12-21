import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/subscribe_request.dart';

abstract class SubscribeEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class Subscribe extends SubscribeEvent {
  final SubscribeRequest subscribeRequest;

  Subscribe({required this.subscribeRequest});
  @override
  List<Object> get props => [subscribeRequest];

  @override
  String toString() => 'Subscribe {subscribeRequest: $subscribeRequest}';
}

class UnSubscribe extends SubscribeEvent {

  final SubscribeRequest subscribeRequest;

  UnSubscribe({required this.subscribeRequest});
  @override
  List<Object> get props => [subscribeRequest];

  @override
  String toString() => 'UnSubscribe {unsubscribeRequest: $subscribeRequest}';
}

class IsSubscribe extends SubscribeEvent {

  final SubscribeRequest subscribeRequest;

  IsSubscribe({required this.subscribeRequest});
  @override
  List<Object> get props => [subscribeRequest];

  @override
  String toString() => 'IsSubscribe {unsubscribeRequest: $subscribeRequest}';
}