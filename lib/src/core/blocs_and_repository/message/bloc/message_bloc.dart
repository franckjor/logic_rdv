import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/appointment.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/repository/appointment_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/message/bloc/message.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/message/repository/message_repository.dart';

class MessageBloc extends Bloc<MessageEvent, MessageState> {
  final MessageRepository repository;

  MessageBloc({@required this.repository}) : super(MessageLoading());

  @override
  MessageState get initialState => MessageLoading();

  @override
  Stream<MessageState> mapEventToState(MessageEvent event) async* {
    yield MessageLoading();
    if (event is GetMessage) {
      yield* _mapGetMessageToState(event);
    }
  }

  Stream<MessageState> _mapGetMessageToState(GetMessage event) async* {
    try {
      final messageList =
          await repository.getMessage(messageRequest: event.messageRequest);
      yield MessageLoadingSuccess(response: messageList);
    } catch (error) {
      yield MessageFailure(error: error.toString());
    }
  }
}
