library inscription_check_request;

import 'dart:convert';

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'inscription_check_request.g.dart';

abstract class InscriptionCheckRequest
    implements Built<InscriptionCheckRequest, InscriptionCheckRequestBuilder> {
  InscriptionCheckRequest._();

  factory InscriptionCheckRequest([updates(InscriptionCheckRequestBuilder b)]) =
      _$InscriptionCheckRequest;

  @BuiltValueField(wireName: 'phone')
  String get phone;
  String toJson() {
    return json.encode(
        serializers.serializeWith(InscriptionCheckRequest.serializer, this));
  }

  static InscriptionCheckRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        InscriptionCheckRequest.serializer, json.decode(jsonString));
  }

  static Serializer<InscriptionCheckRequest> get serializer =>
      _$inscriptionCheckRequestSerializer;
}
