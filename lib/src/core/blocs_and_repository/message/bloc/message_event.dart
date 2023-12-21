import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/message_rdv/message_request.dart';

abstract class MessageEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetMessage extends MessageEvent {
  final MessageRequest messageRequest;

  GetMessage({required this.messageRequest});

  @override
  List<Object> get props => [messageRequest];

  @override
  String toString() => 'GetMessage {messageRequest: $messageRequest}';
}
