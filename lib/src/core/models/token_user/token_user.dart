library token_user;

import 'dart:convert';

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:logic_rdv_v0/src/core/serializers/serializers.dart';

part 'token_user.g.dart';

abstract class TokenUser implements Built<TokenUser, TokenUserBuilder> {
  TokenUser._();

  factory TokenUser([updates(TokenUserBuilder b)]) = _$TokenUser;

  @BuiltValueField(wireName: 'tokenuser')
  String get tokenuser;
  String toJson() {
    return json.encode(serializers.serializeWith(TokenUser.serializer, this));
  }

  static TokenUser fromJson(String jsonString) {
    return serializers.deserializeWith(
        TokenUser.serializer, json.decode(jsonString))!;
  }

  static Serializer<TokenUser> get serializer => _$tokenUserSerializer;
}
