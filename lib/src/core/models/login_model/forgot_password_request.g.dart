// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'forgot_password_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ForgotPasswordRequest> _$forgotPasswordRequestSerializer =
    new _$ForgotPasswordRequestSerializer();

class _$ForgotPasswordRequestSerializer
    implements StructuredSerializer<ForgotPasswordRequest> {
  @override
  final Iterable<Type> types = const [
    ForgotPasswordRequest,
    _$ForgotPasswordRequest
  ];
  @override
  final String wireName = 'ForgotPasswordRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ForgotPasswordRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ForgotPasswordRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ForgotPasswordRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ForgotPasswordRequest extends ForgotPasswordRequest {
  @override
  final String email;

  factory _$ForgotPasswordRequest(
          [void Function(ForgotPasswordRequestBuilder)? updates]) =>
      (new ForgotPasswordRequestBuilder()..update(updates))._build();

  _$ForgotPasswordRequest._({required this.email}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, r'ForgotPasswordRequest', 'email');
  }

  @override
  ForgotPasswordRequest rebuild(
          void Function(ForgotPasswordRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ForgotPasswordRequestBuilder toBuilder() =>
      new ForgotPasswordRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ForgotPasswordRequest && email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ForgotPasswordRequest')
          ..add('email', email))
        .toString();
  }
}

class ForgotPasswordRequestBuilder
    implements Builder<ForgotPasswordRequest, ForgotPasswordRequestBuilder> {
  _$ForgotPasswordRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  ForgotPasswordRequestBuilder();

  ForgotPasswordRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ForgotPasswordRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ForgotPasswordRequest;
  }

  @override
  void update(void Function(ForgotPasswordRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ForgotPasswordRequest build() => _build();

  _$ForgotPasswordRequest _build() {
    final _$result = _$v ??
        new _$ForgotPasswordRequest._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'ForgotPasswordRequest', 'email'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
