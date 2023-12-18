// GENERATED CODE - DO NOT MODIFY BY HAND

part of remove_user_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RemoveUserResponse> _$removeUserResponseSerializer =
    new _$RemoveUserResponseSerializer();
Serializer<ParamsRemoveUserResponse> _$paramsRemoveUserResponseSerializer =
    new _$ParamsRemoveUserResponseSerializer();

class _$RemoveUserResponseSerializer
    implements StructuredSerializer<RemoveUserResponse> {
  @override
  final Iterable<Type> types = const [RemoveUserResponse, _$RemoveUserResponse];
  @override
  final String wireName = 'RemoveUserResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, RemoveUserResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsRemoveUserResponse)),
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
  RemoveUserResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RemoveUserResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'params':
          result.params.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ParamsRemoveUserResponse))
              as ParamsRemoveUserResponse);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsRemoveUserResponseSerializer
    implements StructuredSerializer<ParamsRemoveUserResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsRemoveUserResponse,
    _$ParamsRemoveUserResponse
  ];
  @override
  final String wireName = 'ParamsRemoveUserResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsRemoveUserResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsRemoveUserResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsRemoveUserResponseBuilder();

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

class _$RemoveUserResponse extends RemoveUserResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsRemoveUserResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;

  factory _$RemoveUserResponse(
          [void Function(RemoveUserResponseBuilder) updates]) =>
      (new RemoveUserResponseBuilder()..update(updates)).build();

  _$RemoveUserResponse._(
      {this.version,
      this.request,
      this.params,
      this.message,
      this.httpstatut,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, 'RemoveUserResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'RemoveUserResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'RemoveUserResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, 'RemoveUserResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'RemoveUserResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(error, 'RemoveUserResponse', 'error');
  }

  @override
  RemoveUserResponse rebuild(
          void Function(RemoveUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveUserResponseBuilder toBuilder() =>
      new RemoveUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveUserResponse &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        message == other.message &&
        httpstatut == other.httpstatut &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, version.hashCode), request.hashCode),
                    params.hashCode),
                message.hashCode),
            httpstatut.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveUserResponse')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('httpstatut', httpstatut)
          ..add('error', error))
        .toString();
  }
}

class RemoveUserResponseBuilder
    implements Builder<RemoveUserResponse, RemoveUserResponseBuilder> {
  _$RemoveUserResponse _$v;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request;
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsRemoveUserResponseBuilder _params;
  ParamsRemoveUserResponseBuilder get params =>
      _$this._params ??= new ParamsRemoveUserResponseBuilder();
  set params(ParamsRemoveUserResponseBuilder params) => _$this._params = params;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _httpstatut;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  RemoveUserResponseBuilder();

  RemoveUserResponseBuilder get _$this {
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
  void replace(RemoveUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveUserResponse;
  }

  @override
  void update(void Function(RemoveUserResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveUserResponse build() {
    _$RemoveUserResponse _$result;
    try {
      _$result = _$v ??
          new _$RemoveUserResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'RemoveUserResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'RemoveUserResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'RemoveUserResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'RemoveUserResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'RemoveUserResponse', 'error'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RemoveUserResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsRemoveUserResponse extends ParamsRemoveUserResponse {
  @override
  final String tokenuser;

  factory _$ParamsRemoveUserResponse(
          [void Function(ParamsRemoveUserResponseBuilder) updates]) =>
      (new ParamsRemoveUserResponseBuilder()..update(updates)).build();

  _$ParamsRemoveUserResponse._({this.tokenuser}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'ParamsRemoveUserResponse', 'tokenuser');
  }

  @override
  ParamsRemoveUserResponse rebuild(
          void Function(ParamsRemoveUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsRemoveUserResponseBuilder toBuilder() =>
      new ParamsRemoveUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsRemoveUserResponse && tokenuser == other.tokenuser;
  }

  @override
  int get hashCode {
    return $jf($jc(0, tokenuser.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsRemoveUserResponse')
          ..add('tokenuser', tokenuser))
        .toString();
  }
}

class ParamsRemoveUserResponseBuilder
    implements
        Builder<ParamsRemoveUserResponse, ParamsRemoveUserResponseBuilder> {
  _$ParamsRemoveUserResponse _$v;

  String _tokenuser;
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  ParamsRemoveUserResponseBuilder();

  ParamsRemoveUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsRemoveUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsRemoveUserResponse;
  }

  @override
  void update(void Function(ParamsRemoveUserResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsRemoveUserResponse build() {
    final _$result = _$v ??
        new _$ParamsRemoveUserResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'ParamsRemoveUserResponse', 'tokenuser'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
