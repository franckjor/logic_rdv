library teleconsultationrequest;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'teleconsultationrequest.g.dart';

abstract class TeleconsRequest
    implements Built<TeleconsRequest, TeleconsRequestBuilder> {
  TeleconsRequest._();

  factory TeleconsRequest([updates(TeleconsRequestBuilder b)]) =
      _$TeleconsRequest;

  @BuiltValueField(wireName: 'tokentelecons')
  String get tokentelecons;
  String toJson() {
    return json
        .encode(serializers.serializeWith(TeleconsRequest.serializer, this));
  }

  static TeleconsRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        TeleconsRequest.serializer, json.decode(jsonString));
  }

  static Serializer<TeleconsRequest> get serializer =>
      _$teleconsRequestSerializer;
}
