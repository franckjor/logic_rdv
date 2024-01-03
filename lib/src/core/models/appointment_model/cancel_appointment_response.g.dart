// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_appointment_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CancelAppointmentResponse> _$cancelAppointmentResponseSerializer =
    new _$CancelAppointmentResponseSerializer();
Serializer<ParamsCancelAppointmentResponse>
    _$paramsCancelAppointmentResponseSerializer =
    new _$ParamsCancelAppointmentResponseSerializer();

class _$CancelAppointmentResponseSerializer
    implements StructuredSerializer<CancelAppointmentResponse> {
  @override
  final Iterable<Type> types = const [
    CancelAppointmentResponse,
    _$CancelAppointmentResponse
  ];
  @override
  final String wireName = 'CancelAppointmentResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CancelAppointmentResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsCancelAppointmentResponse)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CancelAppointmentResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CancelAppointmentResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'params':
          result.params.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ParamsCancelAppointmentResponse))!
              as ParamsCancelAppointmentResponse);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsCancelAppointmentResponseSerializer
    implements StructuredSerializer<ParamsCancelAppointmentResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsCancelAppointmentResponse,
    _$ParamsCancelAppointmentResponse
  ];
  @override
  final String wireName = 'ParamsCancelAppointmentResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsCancelAppointmentResponse object,
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
  ParamsCancelAppointmentResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsCancelAppointmentResponseBuilder();

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

class _$CancelAppointmentResponse extends CancelAppointmentResponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsCancelAppointmentResponse params;
  @override
  final String error;
  @override
  final String message;

  factory _$CancelAppointmentResponse(
          [void Function(CancelAppointmentResponseBuilder)? updates]) =>
      (new CancelAppointmentResponseBuilder()..update(updates))._build();

  _$CancelAppointmentResponse._(
      {required this.httpstatut,
      required this.version,
      required this.request,
      required this.params,
      required this.error,
      required this.message})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'CancelAppointmentResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, r'CancelAppointmentResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'CancelAppointmentResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'CancelAppointmentResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, r'CancelAppointmentResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'CancelAppointmentResponse', 'message');
  }

  @override
  CancelAppointmentResponse rebuild(
          void Function(CancelAppointmentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CancelAppointmentResponseBuilder toBuilder() =>
      new CancelAppointmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CancelAppointmentResponse &&
        httpstatut == other.httpstatut &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        error == other.error &&
        message == other.message;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, httpstatut.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CancelAppointmentResponse')
          ..add('httpstatut', httpstatut)
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('error', error)
          ..add('message', message))
        .toString();
  }
}

class CancelAppointmentResponseBuilder
    implements
        Builder<CancelAppointmentResponse, CancelAppointmentResponseBuilder> {
  _$CancelAppointmentResponse? _$v;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsCancelAppointmentResponseBuilder? _params;
  ParamsCancelAppointmentResponseBuilder get params =>
      _$this._params ??= new ParamsCancelAppointmentResponseBuilder();
  set params(ParamsCancelAppointmentResponseBuilder? params) =>
      _$this._params = params;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  CancelAppointmentResponseBuilder();

  CancelAppointmentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpstatut = $v.httpstatut;
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _error = $v.error;
      _message = $v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CancelAppointmentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CancelAppointmentResponse;
  }

  @override
  void update(void Function(CancelAppointmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CancelAppointmentResponse build() => _build();

  _$CancelAppointmentResponse _build() {
    _$CancelAppointmentResponse _$result;
    try {
      _$result = _$v ??
          new _$CancelAppointmentResponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'CancelAppointmentResponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'CancelAppointmentResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'CancelAppointmentResponse', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'CancelAppointmentResponse', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'CancelAppointmentResponse', 'message'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CancelAppointmentResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsCancelAppointmentResponse
    extends ParamsCancelAppointmentResponse {
  @override
  final String tokenuser;
  @override
  final String token;

  factory _$ParamsCancelAppointmentResponse(
          [void Function(ParamsCancelAppointmentResponseBuilder)? updates]) =>
      (new ParamsCancelAppointmentResponseBuilder()..update(updates))._build();

  _$ParamsCancelAppointmentResponse._(
      {required this.tokenuser, required this.token})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'ParamsCancelAppointmentResponse', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        token, r'ParamsCancelAppointmentResponse', 'token');
  }

  @override
  ParamsCancelAppointmentResponse rebuild(
          void Function(ParamsCancelAppointmentResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsCancelAppointmentResponseBuilder toBuilder() =>
      new ParamsCancelAppointmentResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsCancelAppointmentResponse &&
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
    return (newBuiltValueToStringHelper(r'ParamsCancelAppointmentResponse')
          ..add('tokenuser', tokenuser)
          ..add('token', token))
        .toString();
  }
}

class ParamsCancelAppointmentResponseBuilder
    implements
        Builder<ParamsCancelAppointmentResponse,
            ParamsCancelAppointmentResponseBuilder> {
  _$ParamsCancelAppointmentResponse? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  ParamsCancelAppointmentResponseBuilder();

  ParamsCancelAppointmentResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsCancelAppointmentResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsCancelAppointmentResponse;
  }

  @override
  void update(void Function(ParamsCancelAppointmentResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsCancelAppointmentResponse build() => _build();

  _$ParamsCancelAppointmentResponse _build() {
    final _$result = _$v ??
        new _$ParamsCancelAppointmentResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'ParamsCancelAppointmentResponse', 'tokenuser'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'ParamsCancelAppointmentResponse', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
