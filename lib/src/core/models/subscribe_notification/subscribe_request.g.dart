// GENERATED CODE - DO NOT MODIFY BY HAND

part of subscribe_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SubscribeRequest> _$subscribeRequestSerializer =
    new _$SubscribeRequestSerializer();
Serializer<SubscribeResponse> _$subscribeResponseSerializer =
    new _$SubscribeResponseSerializer();
Serializer<ParamsSubscribeResponse> _$paramsSubscribeResponseSerializer =
    new _$ParamsSubscribeResponseSerializer();
Serializer<DataSubscribeResponse> _$dataSubscribeResponseSerializer =
    new _$DataSubscribeResponseSerializer();

class _$SubscribeRequestSerializer
    implements StructuredSerializer<SubscribeRequest> {
  @override
  final Iterable<Type> types = const [SubscribeRequest, _$SubscribeRequest];
  @override
  final String wireName = 'SubscribeRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, SubscribeRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String))!,
      'installationkey',
      serializers.serialize(object.installationkey,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  SubscribeRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubscribeRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'installationkey':
          result.installationkey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SubscribeResponseSerializer
    implements StructuredSerializer<SubscribeResponse> {
  @override
  final Iterable<Type> types = const [SubscribeResponse, _$SubscribeResponse];
  @override
  final String wireName = 'SubscribeResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, SubscribeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int))!,
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String))!,
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String))!,
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsSubscribeResponse))!,
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String))!,
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String))!,
    ];
    Object value;
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DataSubscribeResponse))!);
    }
    return result;
  }

  @override
  SubscribeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SubscribeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
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
                  specifiedType: const FullType(ParamsSubscribeResponse))
              as ParamsSubscribeResponse);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataSubscribeResponse))
              as DataSubscribeResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsSubscribeResponseSerializer
    implements StructuredSerializer<ParamsSubscribeResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsSubscribeResponse,
    _$ParamsSubscribeResponse
  ];
  @override
  final String wireName = 'ParamsSubscribeResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsSubscribeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String))!,
      'installationkey',
      serializers.serialize(object.installationkey,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  ParamsSubscribeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsSubscribeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'installationkey':
          result.installationkey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataSubscribeResponseSerializer
    implements StructuredSerializer<DataSubscribeResponse> {
  @override
  final Iterable<Type> types = const [
    DataSubscribeResponse,
    _$DataSubscribeResponse
  ];
  @override
  final String wireName = 'DataSubscribeResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataSubscribeResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'total',
      serializers.serialize(object.total,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  DataSubscribeResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataSubscribeResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SubscribeRequest extends SubscribeRequest {
  @override
  final String tokenuser;
  @override
  final String installationkey;

  factory _$SubscribeRequest(
          [void Function(SubscribeRequestBuilder)? updates]) =>
      (new SubscribeRequestBuilder()..update(updates!)).build();

  _$SubscribeRequest._({required this.tokenuser,required this.installationkey}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'SubscribeRequest', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        installationkey, 'SubscribeRequest', 'installationkey');
  }

  @override
  SubscribeRequest rebuild(void Function(SubscribeRequestBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  SubscribeRequestBuilder toBuilder() =>
      new SubscribeRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscribeRequest &&
        tokenuser == other.tokenuser &&
        installationkey == other.installationkey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tokenuser.hashCode), installationkey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubscribeRequest')
          ..add('tokenuser', tokenuser)
          ..add('installationkey', installationkey))
        .toString();
  }
}

class SubscribeRequestBuilder
    implements Builder<SubscribeRequest, SubscribeRequestBuilder> {
  _$SubscribeRequest? _$v =_$SubscribeRequest();

  String _tokenuser = '';
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _installationkey = '';
  String get installationkey => _$this._installationkey;
  set installationkey(String installationkey) =>
      _$this._installationkey = installationkey;

  SubscribeRequestBuilder();

  SubscribeRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _installationkey = $v.installationkey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscribeRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubscribeRequest;
  }

  @override
  void update(void Function(SubscribeRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubscribeRequest build() {
    final _$result = _$v ??
        new _$SubscribeRequest._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'SubscribeRequest', 'tokenuser'),
            installationkey: BuiltValueNullFieldError.checkNotNull(
                installationkey, 'SubscribeRequest', 'installationkey'));
    replace(_$result);
    return _$result;
  }
}

class _$SubscribeResponse extends SubscribeResponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsSubscribeResponse params;
  @override
  final String error;
  @override
  final String message;
  @override
  final DataSubscribeResponse data;

  factory _$SubscribeResponse(
          [void Function(SubscribeResponseBuilder)? updates]) =>
      (new SubscribeResponseBuilder()..update(updates!)).build();

  _$SubscribeResponse._(
      {
      required this.httpstatut,
      required this.version,
      required this.request,
      required this.params,
      required this.error,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'SubscribeResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, 'SubscribeResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'SubscribeResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'SubscribeResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(error, 'SubscribeResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, 'SubscribeResponse', 'message');
  }

  @override
  SubscribeResponse rebuild(void Function(SubscribeResponseBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  SubscribeResponseBuilder toBuilder() =>
      new SubscribeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SubscribeResponse &&
        httpstatut == other.httpstatut &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        error == other.error &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, httpstatut.hashCode), version.hashCode),
                        request.hashCode),
                    params.hashCode),
                error.hashCode),
            message.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SubscribeResponse')
          ..add('httpstatut', httpstatut)
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('error', error)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class SubscribeResponseBuilder
    implements Builder<SubscribeResponse, SubscribeResponseBuilder> {
  _$SubscribeResponse? _$v =_$SubscribeResponse();

  int _httpstatut = 0;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _version = '';
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request = '';
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsSubscribeResponseBuilder _params =ParamsSubscribeResponseBuilder();
  ParamsSubscribeResponseBuilder get params =>
      _$this._params ??= new ParamsSubscribeResponseBuilder();
  set params(ParamsSubscribeResponseBuilder params) => _$this._params = params;

  String _error = '';
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _message = '';
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DataSubscribeResponseBuilder _data =DataSubscribeResponseBuilder();
  DataSubscribeResponseBuilder get data =>
      _$this._data ??= new DataSubscribeResponseBuilder();
  set data(DataSubscribeResponseBuilder data) => _$this._data = data;

  SubscribeResponseBuilder();

  SubscribeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpstatut = $v.httpstatut;
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _error = $v.error;
      _message = $v.message;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SubscribeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SubscribeResponse;
  }

  @override
  void update(void Function(SubscribeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SubscribeResponse build() {
    _$SubscribeResponse _$result;
    try {
      _$result = _$v ??
          new _$SubscribeResponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'SubscribeResponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'SubscribeResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'SubscribeResponse', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'SubscribeResponse', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'SubscribeResponse', 'message'),
              data: _data.build());
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'params';
        params.build();

        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SubscribeResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsSubscribeResponse extends ParamsSubscribeResponse {
  @override
  final String tokenuser;
  @override
  final String installationkey;

  factory _$ParamsSubscribeResponse(
          [void Function(ParamsSubscribeResponseBuilder)? updates]) =>
      (new ParamsSubscribeResponseBuilder()..update(updates!)).build();

  _$ParamsSubscribeResponse._({required this.tokenuser,required this.installationkey})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'ParamsSubscribeResponse', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        installationkey, 'ParamsSubscribeResponse', 'installationkey');
  }

  @override
  ParamsSubscribeResponse rebuild(
          void Function(ParamsSubscribeResponseBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ParamsSubscribeResponseBuilder toBuilder() =>
      new ParamsSubscribeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsSubscribeResponse &&
        tokenuser == other.tokenuser &&
        installationkey == other.installationkey;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tokenuser.hashCode), installationkey.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsSubscribeResponse')
          ..add('tokenuser', tokenuser)
          ..add('installationkey', installationkey))
        .toString();
  }
}

class ParamsSubscribeResponseBuilder
    implements
        Builder<ParamsSubscribeResponse, ParamsSubscribeResponseBuilder> {
  _$ParamsSubscribeResponse? _$v = _$ParamsSubscribeResponse();

  String _tokenuser = '';
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _installationkey = '';
  String get installationkey => _$this._installationkey;
  set installationkey(String installationkey) =>
      _$this._installationkey = installationkey;

  ParamsSubscribeResponseBuilder();

  ParamsSubscribeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _installationkey = $v.installationkey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsSubscribeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsSubscribeResponse;
  }

  @override
  void update(void Function(ParamsSubscribeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsSubscribeResponse build() {
    final _$result = _$v ??
        new _$ParamsSubscribeResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'ParamsSubscribeResponse', 'tokenuser'),
            installationkey: BuiltValueNullFieldError.checkNotNull(
                installationkey, 'ParamsSubscribeResponse', 'installationkey'));
    replace(_$result);
    return _$result;
  }
}

class _$DataSubscribeResponse extends DataSubscribeResponse {
  @override
  final String total;

  factory _$DataSubscribeResponse(
          [void Function(DataSubscribeResponseBuilder)? updates]) =>
      (new DataSubscribeResponseBuilder()..update(updates!)).build();

  _$DataSubscribeResponse._({ required this.total}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        total, 'DataSubscribeResponse', 'total');
  }

  @override
  DataSubscribeResponse rebuild(
          void Function(DataSubscribeResponseBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  DataSubscribeResponseBuilder toBuilder() =>
      new DataSubscribeResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataSubscribeResponse && total == other.total;
  }

  @override
  int get hashCode {
    return $jf($jc(0, total.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataSubscribeResponse')
          ..add('total', total))
        .toString();
  }
}

class DataSubscribeResponseBuilder
    implements Builder<DataSubscribeResponse, DataSubscribeResponseBuilder> {
  _$DataSubscribeResponse? _$v =_$DataSubscribeResponse();

  String _total = '';
  String get total => _$this._total;
  set total(String total) => _$this._total = total;

  DataSubscribeResponseBuilder();

  DataSubscribeResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _total = $v.total;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataSubscribeResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataSubscribeResponse;
  }

  @override
  void update(void Function(DataSubscribeResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataSubscribeResponse build() {
    final _$result = _$v ??
        new _$DataSubscribeResponse._(
            total: BuiltValueNullFieldError.checkNotNull(
                total, 'DataSubscribeResponse', 'total'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
