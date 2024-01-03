// GENERATED CODE - DO NOT MODIFY BY HAND

part of token_user;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TokenUser> _$tokenUserSerializer = new _$TokenUserSerializer();

class _$TokenUserSerializer implements StructuredSerializer<TokenUser> {
  @override
  final Iterable<Type> types = const [TokenUser, _$TokenUser];
  @override
  final String wireName = 'TokenUser';

  @override
  Iterable<Object> serialize(Serializers serializers, TokenUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TokenUser deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokenUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TokenUser extends TokenUser {
  @override
  final String tokenuser;

  factory _$TokenUser([void Function(TokenUserBuilder) updates]) =>
      (new TokenUserBuilder()..update(updates)).build();

  _$TokenUser._({this.tokenuser}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tokenuser, 'TokenUser', 'tokenuser');
  }

  @override
  TokenUser rebuild(void Function(TokenUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenUserBuilder toBuilder() => new TokenUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TokenUser && tokenuser == other.tokenuser;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tokenuser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TokenUser')
          ..add('tokenuser', tokenuser))
        .toString();
  }
}

class TokenUserBuilder implements Builder<TokenUser, TokenUserBuilder> {
  _$TokenUser _$v;

  String _tokenuser;
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  TokenUserBuilder();

  TokenUserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TokenUser other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$TokenUser;
  }

  @override
  void update(void Function(TokenUserBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TokenUser build() {
    final _$result = _$v ??
        new _$TokenUser._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'TokenUser', 'tokenuser'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
