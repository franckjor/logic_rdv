// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_appointment_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancelAppointmentRequest> _$cancelAppointmentRequestSerializer =
    new _$CancelAppointmentRequestSerializer();

class _$CancelAppointmentRequestSerializer
    implements StructuredSerializer<CancelAppointmentRequest> {
  @override
  final Iterable<Type> types = const [
    CancelAppointmentRequest,
    _$CancelAppointmentRequest
  ];
  @override
  final String wireName = 'CancelAppointmentRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CancelAppointmentRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CancelAppointmentRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancelAppointmentRequestBuilder();

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
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CancelAppointmentRequest extends CancelAppointmentRequest {
  @override
  final String tokenuser;
  @override
  final String token;

  factory _$CancelAppointmentRequest(
          [void Function(CancelAppointmentRequestBuilder)? updates]) =>
      (new CancelAppointmentRequestBuilder()..update(updates))._build();

  _$CancelAppointmentRequest._({required this.tokenuser, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'CancelAppointmentRequest', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        token, r'CancelAppointmentRequest', 'token');
  }

  @override
  CancelAppointmentRequest rebuild(
          void Function(CancelAppointmentRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelAppointmentRequestBuilder toBuilder() =>
      new CancelAppointmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelAppointmentRequest &&
        tokenuser == other.tokenuser &&
        token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CancelAppointmentRequest')
          ..add('tokenuser', tokenuser)
          ..add('token', token))
        .toString();
  }
}

class CancelAppointmentRequestBuilder
    implements
        Builder<CancelAppointmentRequest, CancelAppointmentRequestBuilder> {
  _$CancelAppointmentRequest? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  CancelAppointmentRequestBuilder();

  CancelAppointmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelAppointmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelAppointmentRequest;
  }

  @override
  void update(void Function(CancelAppointmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelAppointmentRequest build() => _build();

  _$CancelAppointmentRequest _build() {
    final _$result = _$v ??
        new _$CancelAppointmentRequest._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'CancelAppointmentRequest', 'tokenuser'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'CancelAppointmentRequest', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
