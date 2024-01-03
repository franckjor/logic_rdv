// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token_user.dart';

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
  Iterable<Object?> serialize(Serializers serializers, TokenUser object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  TokenUser deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TokenUserBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TokenUser extends TokenUser {
  @override
  final String tokenuser;

  factory _$TokenUser([void Function(TokenUserBuilder)? updates]) =>
      (new TokenUserBuilder()..update(updates))._build();

  _$TokenUser._({required this.tokenuser}) : super._() {
    BuiltValueNullFieldError.checkNotNull(tokenuser, r'TokenUser', 'tokenuser');
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
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'TokenUser')
          ..add('tokenuser', tokenuser))
        .toString();
  }
}

class TokenUserBuilder implements Builder<TokenUser, TokenUserBuilder> {
  _$TokenUser? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

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
  void update(void Function(TokenUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  TokenUser build() => _build();

  _$TokenUser _build() {
    final _$result = _$v ??
        new _$TokenUser._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'TokenUser', 'tokenuser'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
