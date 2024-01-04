library get_token_request;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'get_token_request.g.dart';

abstract class GetTokenRequest
    implements Built<GetTokenRequest, GetTokenRequestBuilder> {
  GetTokenRequest._();

  factory GetTokenRequest([updates(GetTokenRequestBuilder b)]) =
      _$GetTokenRequest;

  @BuiltValueField(wireName: 'client_project')
  String get clientProject;
  @BuiltValueField(wireName: 'client_secret')
  String get clientSecret;
  String toJson() {
    return json
        .encode(serializers.serializeWith(GetTokenRequest.serializer, this));
  }

  static GetTokenRequest? fromJson(String jsonString) {
    return serializers.deserializeWith(
        GetTokenRequest.serializer, json.decode(jsonString));
  }

  static Serializer<GetTokenRequest> get serializer =>
      _$getTokenRequestSerializer;
}
