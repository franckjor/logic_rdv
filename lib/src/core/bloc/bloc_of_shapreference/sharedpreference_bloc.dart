import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'model/shared_preference_object.dart';

class SharedPreferenceBloc
    extends Bloc<SharedPreferenceEvent, SharedPreferenceState> {
  SharedPreferenceBloc() : super(SharedPreferenceLoading());

  @override
  SharedPreferenceState get initialState => SharedPreferenceLoading();

  @override
  Stream<SharedPreferenceState> mapEventToState(
      SharedPreferenceEvent event) async* {
    yield SharedPreferenceLoading();
    if (event is GetSharedPreferenceObject) {
      yield* _readObject(event);
    } else if (event is GetSharedPreferenceTokenAuthorization) {
      yield* _readTokenAuthorization(event);
    } else if (event is SetSharedPreferenceTokenAuthorization) {
      yield* _writeTokenAuthorization(event);
    } else if (event is SetSharedPreferenceObject) {
      yield* _writeObject(event);
    } else if (event is GetSharedPreferenceSession) {
      yield* _readSession(event);
    } else if (event is SetSharedPreferenceSession) {
      yield* _writeSession(event);
    }
  }

  Stream<SharedPreferenceState> _readObject(
      GetSharedPreferenceObject event) async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final result = prefs.getString(event.objectKey);
      SharePreferenceObject object =
          SharePreferenceObject.fromJson(jsonDecode(result!));
      yield SharedPreferenceReadObjectState(sharePreferenceObject: object);
    } catch (e) {
      yield SharedPreferenceLoadingFailure(error: e.toString());
    }
  }

  Stream<SharedPreferenceState> _writeObject(
      SetSharedPreferenceObject event) async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final result =
          await prefs.setString(event.objectKey, event.object.toString());
      yield SharedPreferenceWriteObjectState(isWriteSuccessfully: result);
    } catch (e) {
      yield SharedPreferenceLoadingFailure(error: e.toString());
    }
  }

  Stream<SharedPreferenceState> _readTokenAuthorization(
      GetSharedPreferenceTokenAuthorization event) async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final result = prefs.getString(event.tokenAuthorizationKey);
      yield SharedTokenAuthorizationLoadingSuccess(
          tokenAuthorizationValue: result!);
    } catch (e) {
      yield SharedPreferenceLoadingFailure(error: e.toString());
    }
  }

  Stream<SharedPreferenceState> _writeTokenAuthorization(
      SetSharedPreferenceTokenAuthorization event) async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final result = await prefs.setString(
          event.tokenAuthorizationKey, event.tokenAuthorization);
      yield SharedPreferenceTokenAuthorizationWriteState(
          isWriteSuccessfully: result);
    } catch (e) {
      yield SharedPreferenceLoadingFailure(error: e.toString());
    }
  }

  Stream<SharedPreferenceState> _readSession(
      GetSharedPreferenceSession event) async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final result = prefs.getString(event.sessionKey);
      yield SharedSessionLoadingSuccess(sessionValue: result!);
    } catch (e) {
      yield SharedPreferenceLoadingFailure(error: e.toString());
    }
  }

  Stream<SharedPreferenceState> _writeSession(
      SetSharedPreferenceSession event) async* {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    try {
      final result = await prefs.setString(event.sessionKey, event.session);
      yield SharedSessionWriteLoadingSuccess(sessionWrite: result);
    } catch (e) {
      yield SharedPreferenceLoadingFailure(error: e.toString());
    }
  }
}
