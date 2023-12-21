import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';

class SubscribeBloc extends Bloc<SubscribeEvent, SubscribeState> {
  final SubscribeRepository repository;

  SubscribeBloc({required this.repository}) : super(SubscribeStateLoading());

  @override
  SubscribeState get initialState => SubscribeStateLoading();

  @override
  Stream<SubscribeState> mapEventToState(SubscribeEvent event) async* {
    yield SubscribeStateLoading();
    if (event is Subscribe) {
      yield* _mapGetSubscribeToState(event);
    } else if (event is UnSubscribe) {
      yield* _mapGetUnSubscribeToState(event);
    }else if (event is IsSubscribe) {
      yield* _mapGetIsSubscribeToState(event);
    }
  }

  Stream<SubscribeState> _mapGetSubscribeToState(Subscribe event) async* {
    try {
      final subscribe = await repository.getSubscribe(
          subscribeRequest: event.subscribeRequest);
      yield SubscribeStateLoadingSuccess(subscribeResponse: subscribe);
    } catch (error) {
      yield SubscribeStateLoadingFailure(error: error.toString());
    }
  }

  Stream<SubscribeState> _mapGetUnSubscribeToState(UnSubscribe event) async* {
    try {
      final unsbscribe = await repository.getUnSubscribe(
          subscribeRequest: event.subscribeRequest);
      yield UnSubscribeStateLoadingSuccess(subscribeResponse: unsbscribe);
    } catch (error) {
      yield SubscribeStateLoadingFailure(error: error.toString());
    }
  }

  Stream<SubscribeState> _mapGetIsSubscribeToState(IsSubscribe event) async* {
    try {
      final issbscribe = await repository.getIsSubscribe(
          subscribeRequest: event.subscribeRequest);
      yield IsSubscribeStateLoadingSuccess(verifyNotifSubscribtion: issbscribe);
    } catch (error) {
      yield SubscribeStateLoadingFailure(error: error.toString());
    }
  }

}
