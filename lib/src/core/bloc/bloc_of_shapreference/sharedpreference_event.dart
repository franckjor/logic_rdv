import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

import 'model/shared_preference_object.dart';

abstract class SharedPreferenceEvent extends Equatable {
  @override
  // TODO: implement props
  List<Object> get props => [];

  @override
  String toString() => 'SharedPreferenceState { }';
}

class SetSharedPreferenceObject extends SharedPreferenceEvent {
  final String objectKey;
  final SharePreferenceObject object;

  SetSharedPreferenceObject({
    required this.objectKey,
    required this.object,
  });

  @override
  List<Object> get props => [objectKey, object];

  @override
  String toString() => 'SetSharedPreferenceObject { '
      'objectKey: $objectKey ,'
      'object: $object}';
}

class GetSharedPreferenceObject extends SharedPreferenceEvent {
  final String objectKey;

  GetSharedPreferenceObject({
    required this.objectKey,
  });

  @override
  List<Object> get props => [objectKey];

  @override
  String toString() => 'GetSharedPreferenceObject { '
      'objectKey: $objectKey }';
}

class SetSharedPreferenceTokenAuthorization extends SharedPreferenceEvent {
  final String tokenAuthorizationKey;
  final String tokenAuthorization;

  SetSharedPreferenceTokenAuthorization({
    required this.tokenAuthorizationKey,
    required this.tokenAuthorization,
  });

  @override
  List<Object> get props => [tokenAuthorizationKey, tokenAuthorization];

  @override
  String toString() => 'SetSharedPreferenceTokenAuthorization { '
      'tokenAuthorizationKey: $tokenAuthorizationKey ,'
      'tokenAuthorization: $tokenAuthorization}';
}

class SetSharedPreferenceSession extends SharedPreferenceEvent {
  final String sessionKey;
  final String session;

  SetSharedPreferenceSession({
    required this.sessionKey,
    required this.session,
  });

  @override
  List<Object> get props => [sessionKey, session];

  @override
  String toString() => 'SetSharedPreferenceTokenAuthorization { '
      'sessionKey: $sessionKey ,'
      'session: $session}';
}

class GetSharedPreferenceSession extends SharedPreferenceEvent {
  final String sessionKey;

  GetSharedPreferenceSession({required this.sessionKey});

  @override
  List<Object> get props => [sessionKey];

  @override
  String toString() => 'GetSharedPreferenceSession { '
      'sessionKey: $sessionKey }';
}

class GetSharedPreferenceTokenAuthorization extends SharedPreferenceEvent {
  final String tokenAuthorizationKey;

  GetSharedPreferenceTokenAuthorization({required this.tokenAuthorizationKey});

  @override
  List<Object> get props => [tokenAuthorizationKey];

  @override
  String toString() => 'GetSharedPreferenceTokenAuthorization { '
      'tokenAuthorizationKey: $tokenAuthorizationKey }';
}

class ReadLanguageKeyInSharedPreference extends SharedPreferenceEvent {
  ReadLanguageKeyInSharedPreference();

  @override
  List<Object> get props => [];

  @override
  String toString() => 'WriteLanguageKeyInSharedPreference { }';
}
