import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/message_rdv/message_response.dart';

class MessageState extends Equatable {
  @override
  List<Object> get props => [];
}

class MessageEmpty extends MessageState {}

class MessageLoading extends MessageState {}

class MessageLoadingSuccess extends MessageState {
  final MessageResponse response;
  MessageLoadingSuccess({required this.response});

  @override
  List<Object> get props => [response];

  @override
  String toString() => 'MessageLoadingSuccess {response: $response}';
}

class MessageFailure extends MessageState {
  final String error;

  MessageFailure({required this.error});

  @override
  List<Object> get props => [error];

  @override
  String toString() => 'MessageFailure { error: $error }';
}
