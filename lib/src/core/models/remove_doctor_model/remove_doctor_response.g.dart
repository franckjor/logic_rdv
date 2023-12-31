// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'remove_doctor_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RemoveDoctorResponse> _$removeDoctorResponseSerializer =
    new _$RemoveDoctorResponseSerializer();
Serializer<ParamsRemoveDoctorResponse> _$paramsRemoveDoctorResponseSerializer =
    new _$ParamsRemoveDoctorResponseSerializer();

class _$RemoveDoctorResponseSerializer
    implements StructuredSerializer<RemoveDoctorResponse> {
  @override
  final Iterable<Type> types = const [
    RemoveDoctorResponse,
    _$RemoveDoctorResponse
  ];
  @override
  final String wireName = 'RemoveDoctorResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, RemoveDoctorResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsRemoveDoctorResponse)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RemoveDoctorResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RemoveDoctorResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
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
                  specifiedType: const FullType(ParamsRemoveDoctorResponse))!
              as ParamsRemoveDoctorResponse);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsRemoveDoctorResponseSerializer
    implements StructuredSerializer<ParamsRemoveDoctorResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsRemoveDoctorResponse,
    _$ParamsRemoveDoctorResponse
  ];
  @override
  final String wireName = 'ParamsRemoveDoctorResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsRemoveDoctorResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsRemoveDoctorResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsRemoveDoctorResponseBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RemoveDoctorResponse extends RemoveDoctorResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsRemoveDoctorResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;

  factory _$RemoveDoctorResponse(
          [void Function(RemoveDoctorResponseBuilder)? updates]) =>
      (new RemoveDoctorResponseBuilder()..update(updates))._build();

  _$RemoveDoctorResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'RemoveDoctorResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'RemoveDoctorResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'RemoveDoctorResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'RemoveDoctorResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'RemoveDoctorResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, r'RemoveDoctorResponse', 'error');
  }

  @override
  RemoveDoctorResponse rebuild(
          void Function(RemoveDoctorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveDoctorResponseBuilder toBuilder() =>
      new RemoveDoctorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveDoctorResponse &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        message == other.message &&
        httpstatut == other.httpstatut &&
        error == other.error;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, httpstatut.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RemoveDoctorResponse')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('httpstatut', httpstatut)
          ..add('error', error))
        .toString();
  }
}

class RemoveDoctorResponseBuilder
    implements Builder<RemoveDoctorResponse, RemoveDoctorResponseBuilder> {
  _$RemoveDoctorResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsRemoveDoctorResponseBuilder? _params;
  ParamsRemoveDoctorResponseBuilder get params =>
      _$this._params ??= new ParamsRemoveDoctorResponseBuilder();
  set params(ParamsRemoveDoctorResponseBuilder? params) =>
      _$this._params = params;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  RemoveDoctorResponseBuilder();

  RemoveDoctorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _message = $v.message;
      _httpstatut = $v.httpstatut;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveDoctorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveDoctorResponse;
  }

  @override
  void update(void Function(RemoveDoctorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RemoveDoctorResponse build() => _build();

  _$RemoveDoctorResponse _build() {
    _$RemoveDoctorResponse _$result;
    try {
      _$result = _$v ??
          new _$RemoveDoctorResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'RemoveDoctorResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'RemoveDoctorResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'RemoveDoctorResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'RemoveDoctorResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'RemoveDoctorResponse', 'error'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'RemoveDoctorResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsRemoveDoctorResponse extends ParamsRemoveDoctorResponse {
  @override
  final String tokenuser;
  @override
  final String id;

  factory _$ParamsRemoveDoctorResponse(
          [void Function(ParamsRemoveDoctorResponseBuilder)? updates]) =>
      (new ParamsRemoveDoctorResponseBuilder()..update(updates))._build();

  _$ParamsRemoveDoctorResponse._({required this.tokenuser, required this.id})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'ParamsRemoveDoctorResponse', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        id, r'ParamsRemoveDoctorResponse', 'id');
  }

  @override
  ParamsRemoveDoctorResponse rebuild(
          void Function(ParamsRemoveDoctorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsRemoveDoctorResponseBuilder toBuilder() =>
      new ParamsRemoveDoctorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsRemoveDoctorResponse &&
        tokenuser == other.tokenuser &&
        id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsRemoveDoctorResponse')
          ..add('tokenuser', tokenuser)
          ..add('id', id))
        .toString();
  }
}

class ParamsRemoveDoctorResponseBuilder
    implements
        Builder<ParamsRemoveDoctorResponse, ParamsRemoveDoctorResponseBuilder> {
  _$ParamsRemoveDoctorResponse? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  ParamsRemoveDoctorResponseBuilder();

  ParamsRemoveDoctorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsRemoveDoctorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsRemoveDoctorResponse;
  }

  @override
  void update(void Function(ParamsRemoveDoctorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsRemoveDoctorResponse build() => _build();

  _$ParamsRemoveDoctorResponse _build() {
    final _$result = _$v ??
        new _$ParamsRemoveDoctorResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'ParamsRemoveDoctorResponse', 'tokenuser'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ParamsRemoveDoctorResponse', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
