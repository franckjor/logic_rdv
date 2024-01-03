import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/notification/notification_list_response.dart';

class NotificationState extends Equatable {
  @override
  List<Object> get props => [];
}

class NotificationEmpty extends NotificationState {}

class NotificationLoading extends NotificationState {}

class NotificationListLoadingSuccess extends NotificationState {
  final NotificationListResponse response;
  NotificationListLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'NotificationListLoadingSuccess {response: $response}';
}

class NotificationFailure extends NotificationState {
  final String error;

  NotificationFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'NotificationFailure { error: $error }';
}
