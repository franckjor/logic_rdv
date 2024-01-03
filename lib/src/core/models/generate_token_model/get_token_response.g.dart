// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_token_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetTokenResponse> _$getTokenResponseSerializer =
    new _$GetTokenResponseSerializer();
Serializer<DataTokenResponse> _$dataTokenResponseSerializer =
    new _$DataTokenResponseSerializer();

class _$GetTokenResponseSerializer
    implements StructuredSerializer<GetTokenResponse> {
  @override
  final Iterable<Type> types = const [GetTokenResponse, _$GetTokenResponse];
  @override
  final String wireName = 'GetTokenResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, GetTokenResponse object,
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
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataTokenResponse)),
    ];

    return result;
  }

  @override
  GetTokenResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetTokenResponseBuilder();

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
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataTokenResponse))!
              as DataTokenResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$DataTokenResponseSerializer
    implements StructuredSerializer<DataTokenResponse> {
  @override
  final Iterable<Type> types = const [DataTokenResponse, _$DataTokenResponse];
  @override
  final String wireName = 'DataTokenResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataTokenResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.authorization;
    if (value != null) {
      result
        ..add('authorization')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DataTokenResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataTokenResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'authorization':
          result.authorization = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$GetTokenResponse extends GetTokenResponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final String message;
  @override
  final String error;
  @override
  final DataTokenResponse data;

  factory _$GetTokenResponse(
          [void Function(GetTokenResponseBuilder)? updates]) =>
      (new GetTokenResponseBuilder()..update(updates))._build();

  _$GetTokenResponse._(
      {required this.httpstatut,
      required this.version,
      required this.request,
      required this.message,
      required this.error,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'GetTokenResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, r'GetTokenResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'GetTokenResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        message, r'GetTokenResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(error, r'GetTokenResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(data, r'GetTokenResponse', 'data');
  }

  @override
  GetTokenResponse rebuild(void Function(GetTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetTokenResponseBuilder toBuilder() =>
      new GetTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetTokenResponse &&
        httpstatut == other.httpstatut &&
        version == other.version &&
        request == other.request &&
        message == other.message &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, httpstatut.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'GetTokenResponse')
          ..add('httpstatut', httpstatut)
          ..add('version', version)
          ..add('request', request)
          ..add('message', message)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class GetTokenResponseBuilder
    implements Builder<GetTokenResponse, GetTokenResponseBuilder> {
  _$GetTokenResponse? _$v;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DataTokenResponseBuilder? _data;
  DataTokenResponseBuilder get data =>
      _$this._data ??= new DataTokenResponseBuilder();
  set data(DataTokenResponseBuilder? data) => _$this._data = data;

  GetTokenResponseBuilder();

  GetTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpstatut = $v.httpstatut;
      _version = $v.version;
      _request = $v.request;
      _message = $v.message;
      _error = $v.error;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetTokenResponse;
  }

  @override
  void update(void Function(GetTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  GetTokenResponse build() => _build();

  _$GetTokenResponse _build() {
    _$GetTokenResponse _$result;
    try {
      _$result = _$v ??
          new _$GetTokenResponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'GetTokenResponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'GetTokenResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'GetTokenResponse', 'request'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'GetTokenResponse', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'GetTokenResponse', 'error'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'GetTokenResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataTokenResponse extends DataTokenResponse {
  @override
  final String? authorization;

  factory _$DataTokenResponse(
          [void Function(DataTokenResponseBuilder)? updates]) =>
      (new DataTokenResponseBuilder()..update(updates))._build();

  _$DataTokenResponse._({required this.authorization}) : super._();

  @override
  DataTokenResponse rebuild(void Function(DataTokenResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataTokenResponseBuilder toBuilder() =>
      new DataTokenResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataTokenResponse && authorization == other.authorization;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, authorization.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataTokenResponse')
          ..add('authorization', authorization))
        .toString();
  }
}

class DataTokenResponseBuilder
    implements Builder<DataTokenResponse, DataTokenResponseBuilder> {
  _$DataTokenResponse? _$v;

  String? _authorization;
  String? get authorization => _$this._authorization;
  set authorization(String? authorization) =>
      _$this._authorization = authorization;

  DataTokenResponseBuilder();

  DataTokenResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _authorization = $v.authorization;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataTokenResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataTokenResponse;
  }

  @override
  void update(void Function(DataTokenResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataTokenResponse build() => _build();

  _$DataTokenResponse _build() {
    final _$result =
        _$v ?? new _$DataTokenResponse._(authorization: authorization);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
