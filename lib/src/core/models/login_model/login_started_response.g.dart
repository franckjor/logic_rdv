// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_started_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginStartedResponse> _$loginStartedResponseSerializer =
    new _$LoginStartedResponseSerializer();
Serializer<ParamsLoginStartedResponse> _$paramsLoginStartedResponseSerializer =
    new _$ParamsLoginStartedResponseSerializer();
Serializer<DataLoginStartedResponse> _$dataLoginStartedResponseSerializer =
    new _$DataLoginStartedResponseSerializer();
Serializer<InputloginStartedResponse> _$inputloginStartedResponseSerializer =
    new _$InputloginStartedResponseSerializer();
Serializer<ButtonvalidationloginStartedResponse>
    _$buttonvalidationloginStartedResponseSerializer =
    new _$ButtonvalidationloginStartedResponseSerializer();

class _$LoginStartedResponseSerializer
    implements StructuredSerializer<LoginStartedResponse> {
  @override
  final Iterable<Type> types = const [
    LoginStartedResponse,
    _$LoginStartedResponse
  ];
  @override
  final String wireName = 'LoginStartedResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LoginStartedResponse object,
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
          specifiedType: const FullType(ParamsLoginStartedResponse)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataLoginStartedResponse)),
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  LoginStartedResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginStartedResponseBuilder();

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
                  specifiedType: const FullType(ParamsLoginStartedResponse))!
              as ParamsLoginStartedResponse);
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
                  specifiedType: const FullType(DataLoginStartedResponse))!
              as DataLoginStartedResponse);
          break;
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsLoginStartedResponseSerializer
    implements StructuredSerializer<ParamsLoginStartedResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsLoginStartedResponse,
    _$ParamsLoginStartedResponse
  ];
  @override
  final String wireName = 'ParamsLoginStartedResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsLoginStartedResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'data',
      serializers.serialize(object.data, specifiedType: const FullType(String)),
      'action',
      serializers.serialize(object.action,
          specifiedType: const FullType(String)),
      'session',
      serializers.serialize(object.session,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsLoginStartedResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsLoginStartedResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataLoginStartedResponseSerializer
    implements StructuredSerializer<DataLoginStartedResponse> {
  @override
  final Iterable<Type> types = const [
    DataLoginStartedResponse,
    _$DataLoginStartedResponse
  ];
  @override
  final String wireName = 'DataLoginStartedResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataLoginStartedResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'headererror',
      serializers.serialize(object.headererror,
          specifiedType: const FullType(String)),
      'type',
      serializers.serialize(object.type, specifiedType: const FullType(String)),
      'headermessage',
      serializers.serialize(object.headermessage,
          specifiedType: const FullType(String)),
      'input',
      serializers.serialize(object.input,
          specifiedType: const FullType(
              BuiltList, const [const FullType(InputloginStartedResponse)])),
      'buttonvalidation',
      serializers.serialize(object.buttonvalidation,
          specifiedType: const FullType(BuiltList,
              const [const FullType(ButtonvalidationloginStartedResponse)])),
      'session',
      serializers.serialize(object.session,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  DataLoginStartedResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataLoginStartedResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'headererror':
          result.headererror = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'headermessage':
          result.headermessage = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'input':
          result.input.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(InputloginStartedResponse)
              ]))! as BuiltList<Object?>);
          break;
        case 'buttonvalidation':
          result.buttonvalidation.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ButtonvalidationloginStartedResponse)
              ]))! as BuiltList<Object?>);
          break;
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InputloginStartedResponseSerializer
    implements StructuredSerializer<InputloginStartedResponse> {
  @override
  final Iterable<Type> types = const [
    InputloginStartedResponse,
    _$InputloginStartedResponse
  ];
  @override
  final String wireName = 'InputloginStartedResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, InputloginStartedResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'name',
      serializers.serialize(object.name, specifiedType: const FullType(String)),
      'mandatory',
      serializers.serialize(object.mandatory,
          specifiedType: const FullType(String)),
      'readonly',
      serializers.serialize(object.readonly,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'value',
      serializers.serialize(object.value,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  InputloginStartedResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InputloginStartedResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mandatory':
          result.mandatory = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'readonly':
          result.readonly = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ButtonvalidationloginStartedResponseSerializer
    implements StructuredSerializer<ButtonvalidationloginStartedResponse> {
  @override
  final Iterable<Type> types = const [
    ButtonvalidationloginStartedResponse,
    _$ButtonvalidationloginStartedResponse
  ];
  @override
  final String wireName = 'ButtonvalidationloginStartedResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ButtonvalidationloginStartedResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'onclick',
      serializers.serialize(object.onclick,
          specifiedType: const FullType(String)),
      'label',
      serializers.serialize(object.label,
          specifiedType: const FullType(String)),
      'onclick_data',
      serializers.serialize(object.onclickData,
          specifiedType: const FullType(String)),
      'onclick_action',
      serializers.serialize(object.onclickAction,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ButtonvalidationloginStartedResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ButtonvalidationloginStartedResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'onclick':
          result.onclick = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginStartedResponse extends LoginStartedResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsLoginStartedResponse params;
  @override
  final String message;
  @override
  final String error;
  @override
  final DataLoginStartedResponse data;
  @override
  final int httpstatut;

  factory _$LoginStartedResponse(
          [void Function(LoginStartedResponseBuilder)? updates]) =>
      (new LoginStartedResponseBuilder()..update(updates))._build();

  _$LoginStartedResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.error,
      required this.data,
      required this.httpstatut})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'LoginStartedResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'LoginStartedResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'LoginStartedResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'LoginStartedResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'LoginStartedResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        data, r'LoginStartedResponse', 'data');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'LoginStartedResponse', 'httpstatut');
  }

  @override
  LoginStartedResponse rebuild(
          void Function(LoginStartedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginStartedResponseBuilder toBuilder() =>
      new LoginStartedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginStartedResponse &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        message == other.message &&
        error == other.error &&
        data == other.data &&
        httpstatut == other.httpstatut;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, httpstatut.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginStartedResponse')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('error', error)
          ..add('data', data)
          ..add('httpstatut', httpstatut))
        .toString();
  }
}

class LoginStartedResponseBuilder
    implements Builder<LoginStartedResponse, LoginStartedResponseBuilder> {
  _$LoginStartedResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsLoginStartedResponseBuilder? _params;
  ParamsLoginStartedResponseBuilder get params =>
      _$this._params ??= new ParamsLoginStartedResponseBuilder();
  set params(ParamsLoginStartedResponseBuilder? params) =>
      _$this._params = params;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DataLoginStartedResponseBuilder? _data;
  DataLoginStartedResponseBuilder get data =>
      _$this._data ??= new DataLoginStartedResponseBuilder();
  set data(DataLoginStartedResponseBuilder? data) => _$this._data = data;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  LoginStartedResponseBuilder();

  LoginStartedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _message = $v.message;
      _error = $v.error;
      _data = $v.data.toBuilder();
      _httpstatut = $v.httpstatut;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginStartedResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginStartedResponse;
  }

  @override
  void update(void Function(LoginStartedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginStartedResponse build() => _build();

  _$LoginStartedResponse _build() {
    _$LoginStartedResponse _$result;
    try {
      _$result = _$v ??
          new _$LoginStartedResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'LoginStartedResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'LoginStartedResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'LoginStartedResponse', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'LoginStartedResponse', 'error'),
              data: data.build(),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'LoginStartedResponse', 'httpstatut'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();

        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoginStartedResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsLoginStartedResponse extends ParamsLoginStartedResponse {
  @override
  final String data;
  @override
  final String action;
  @override
  final String session;

  factory _$ParamsLoginStartedResponse(
          [void Function(ParamsLoginStartedResponseBuilder)? updates]) =>
      (new ParamsLoginStartedResponseBuilder()..update(updates))._build();

  _$ParamsLoginStartedResponse._(
      {required this.data, required this.action, required this.session})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'ParamsLoginStartedResponse', 'data');
    BuiltValueNullFieldError.checkNotNull(
        action, r'ParamsLoginStartedResponse', 'action');
    BuiltValueNullFieldError.checkNotNull(
        session, r'ParamsLoginStartedResponse', 'session');
  }

  @override
  ParamsLoginStartedResponse rebuild(
          void Function(ParamsLoginStartedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsLoginStartedResponseBuilder toBuilder() =>
      new ParamsLoginStartedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsLoginStartedResponse &&
        data == other.data &&
        action == other.action &&
        session == other.session;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, action.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsLoginStartedResponse')
          ..add('data', data)
          ..add('action', action)
          ..add('session', session))
        .toString();
  }
}

class ParamsLoginStartedResponseBuilder
    implements
        Builder<ParamsLoginStartedResponse, ParamsLoginStartedResponseBuilder> {
  _$ParamsLoginStartedResponse? _$v;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  ParamsLoginStartedResponseBuilder();

  ParamsLoginStartedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _action = $v.action;
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsLoginStartedResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsLoginStartedResponse;
  }

  @override
  void update(void Function(ParamsLoginStartedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsLoginStartedResponse build() => _build();

  _$ParamsLoginStartedResponse _build() {
    final _$result = _$v ??
        new _$ParamsLoginStartedResponse._(
            data: BuiltValueNullFieldError.checkNotNull(
                data, r'ParamsLoginStartedResponse', 'data'),
            action: BuiltValueNullFieldError.checkNotNull(
                action, r'ParamsLoginStartedResponse', 'action'),
            session: BuiltValueNullFieldError.checkNotNull(
                session, r'ParamsLoginStartedResponse', 'session'));
    replace(_$result);
    return _$result;
  }
}

class _$DataLoginStartedResponse extends DataLoginStartedResponse {
  @override
  final String headererror;
  @override
  final String type;
  @override
  final String headermessage;
  @override
  final BuiltList<InputloginStartedResponse> input;
  @override
  final BuiltList<ButtonvalidationloginStartedResponse> buttonvalidation;
  @override
  final String session;

  factory _$DataLoginStartedResponse(
          [void Function(DataLoginStartedResponseBuilder)? updates]) =>
      (new DataLoginStartedResponseBuilder()..update(updates))._build();

  _$DataLoginStartedResponse._(
      {required this.headererror,
      required this.type,
      required this.headermessage,
      required this.input,
      required this.buttonvalidation,
      required this.session})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        headererror, r'DataLoginStartedResponse', 'headererror');
    BuiltValueNullFieldError.checkNotNull(
        type, r'DataLoginStartedResponse', 'type');
    BuiltValueNullFieldError.checkNotNull(
        headermessage, r'DataLoginStartedResponse', 'headermessage');
    BuiltValueNullFieldError.checkNotNull(
        input, r'DataLoginStartedResponse', 'input');
    BuiltValueNullFieldError.checkNotNull(
        buttonvalidation, r'DataLoginStartedResponse', 'buttonvalidation');
    BuiltValueNullFieldError.checkNotNull(
        session, r'DataLoginStartedResponse', 'session');
  }

  @override
  DataLoginStartedResponse rebuild(
          void Function(DataLoginStartedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataLoginStartedResponseBuilder toBuilder() =>
      new DataLoginStartedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataLoginStartedResponse &&
        headererror == other.headererror &&
        type == other.type &&
        headermessage == other.headermessage &&
        input == other.input &&
        buttonvalidation == other.buttonvalidation &&
        session == other.session;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, headererror.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, headermessage.hashCode);
    _$hash = $jc(_$hash, input.hashCode);
    _$hash = $jc(_$hash, buttonvalidation.hashCode);
    _$hash = $jc(_$hash, session.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataLoginStartedResponse')
          ..add('headererror', headererror)
          ..add('type', type)
          ..add('headermessage', headermessage)
          ..add('input', input)
          ..add('buttonvalidation', buttonvalidation)
          ..add('session', session))
        .toString();
  }
}

class DataLoginStartedResponseBuilder
    implements
        Builder<DataLoginStartedResponse, DataLoginStartedResponseBuilder> {
  _$DataLoginStartedResponse? _$v;

  String? _headererror;
  String? get headererror => _$this._headererror;
  set headererror(String? headererror) => _$this._headererror = headererror;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  String? _headermessage;
  String? get headermessage => _$this._headermessage;
  set headermessage(String? headermessage) =>
      _$this._headermessage = headermessage;

  ListBuilder<InputloginStartedResponse>? _input;
  ListBuilder<InputloginStartedResponse> get input =>
      _$this._input ??= new ListBuilder<InputloginStartedResponse>();
  set input(ListBuilder<InputloginStartedResponse>? input) =>
      _$this._input = input;

  ListBuilder<ButtonvalidationloginStartedResponse>? _buttonvalidation;
  ListBuilder<ButtonvalidationloginStartedResponse> get buttonvalidation =>
      _$this._buttonvalidation ??=
          new ListBuilder<ButtonvalidationloginStartedResponse>();
  set buttonvalidation(
          ListBuilder<ButtonvalidationloginStartedResponse>?
              buttonvalidation) =>
      _$this._buttonvalidation = buttonvalidation;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  DataLoginStartedResponseBuilder();

  DataLoginStartedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headererror = $v.headererror;
      _type = $v.type;
      _headermessage = $v.headermessage;
      _input = $v.input.toBuilder();
      _buttonvalidation = $v.buttonvalidation.toBuilder();
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataLoginStartedResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataLoginStartedResponse;
  }

  @override
  void update(void Function(DataLoginStartedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataLoginStartedResponse build() => _build();

  _$DataLoginStartedResponse _build() {
    _$DataLoginStartedResponse _$result;
    try {
      _$result = _$v ??
          new _$DataLoginStartedResponse._(
              headererror: BuiltValueNullFieldError.checkNotNull(
                  headererror, r'DataLoginStartedResponse', 'headererror'),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'DataLoginStartedResponse', 'type'),
              headermessage: BuiltValueNullFieldError.checkNotNull(
                  headermessage, r'DataLoginStartedResponse', 'headermessage'),
              input: input.build(),
              buttonvalidation: buttonvalidation.build(),
              session: BuiltValueNullFieldError.checkNotNull(
                  session, r'DataLoginStartedResponse', 'session'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'input';
        input.build();
        _$failedField = 'buttonvalidation';
        buttonvalidation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataLoginStartedResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$InputloginStartedResponse extends InputloginStartedResponse {
  @override
  final String name;
  @override
  final String mandatory;
  @override
  final String readonly;
  @override
  final String label;
  @override
  final String value;

  factory _$InputloginStartedResponse(
          [void Function(InputloginStartedResponseBuilder)? updates]) =>
      (new InputloginStartedResponseBuilder()..update(updates))._build();

  _$InputloginStartedResponse._(
      {required this.name,
      required this.mandatory,
      required this.readonly,
      required this.label,
      required this.value})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        name, r'InputloginStartedResponse', 'name');
    BuiltValueNullFieldError.checkNotNull(
        mandatory, r'InputloginStartedResponse', 'mandatory');
    BuiltValueNullFieldError.checkNotNull(
        readonly, r'InputloginStartedResponse', 'readonly');
    BuiltValueNullFieldError.checkNotNull(
        label, r'InputloginStartedResponse', 'label');
    BuiltValueNullFieldError.checkNotNull(
        value, r'InputloginStartedResponse', 'value');
  }

  @override
  InputloginStartedResponse rebuild(
          void Function(InputloginStartedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InputloginStartedResponseBuilder toBuilder() =>
      new InputloginStartedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InputloginStartedResponse &&
        name == other.name &&
        mandatory == other.mandatory &&
        readonly == other.readonly &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, mandatory.hashCode);
    _$hash = $jc(_$hash, readonly.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'InputloginStartedResponse')
          ..add('name', name)
          ..add('mandatory', mandatory)
          ..add('readonly', readonly)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class InputloginStartedResponseBuilder
    implements
        Builder<InputloginStartedResponse, InputloginStartedResponseBuilder> {
  _$InputloginStartedResponse? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _mandatory;
  String? get mandatory => _$this._mandatory;
  set mandatory(String? mandatory) => _$this._mandatory = mandatory;

  String? _readonly;
  String? get readonly => _$this._readonly;
  set readonly(String? readonly) => _$this._readonly = readonly;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  InputloginStartedResponseBuilder();

  InputloginStartedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _mandatory = $v.mandatory;
      _readonly = $v.readonly;
      _label = $v.label;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InputloginStartedResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InputloginStartedResponse;
  }

  @override
  void update(void Function(InputloginStartedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  InputloginStartedResponse build() => _build();

  _$InputloginStartedResponse _build() {
    final _$result = _$v ??
        new _$InputloginStartedResponse._(
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'InputloginStartedResponse', 'name'),
            mandatory: BuiltValueNullFieldError.checkNotNull(
                mandatory, r'InputloginStartedResponse', 'mandatory'),
            readonly: BuiltValueNullFieldError.checkNotNull(
                readonly, r'InputloginStartedResponse', 'readonly'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'InputloginStartedResponse', 'label'),
            value: BuiltValueNullFieldError.checkNotNull(
                value, r'InputloginStartedResponse', 'value'));
    replace(_$result);
    return _$result;
  }
}

class _$ButtonvalidationloginStartedResponse
    extends ButtonvalidationloginStartedResponse {
  @override
  final String onclick;
  @override
  final String label;
  @override
  final String onclickData;
  @override
  final String onclickAction;

  factory _$ButtonvalidationloginStartedResponse(
          [void Function(ButtonvalidationloginStartedResponseBuilder)?
              updates]) =>
      (new ButtonvalidationloginStartedResponseBuilder()..update(updates))
          ._build();

  _$ButtonvalidationloginStartedResponse._(
      {required this.onclick,
      required this.label,
      required this.onclickData,
      required this.onclickAction})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        onclick, r'ButtonvalidationloginStartedResponse', 'onclick');
    BuiltValueNullFieldError.checkNotNull(
        label, r'ButtonvalidationloginStartedResponse', 'label');
    BuiltValueNullFieldError.checkNotNull(
        onclickData, r'ButtonvalidationloginStartedResponse', 'onclickData');
    BuiltValueNullFieldError.checkNotNull(onclickAction,
        r'ButtonvalidationloginStartedResponse', 'onclickAction');
  }

  @override
  ButtonvalidationloginStartedResponse rebuild(
          void Function(ButtonvalidationloginStartedResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ButtonvalidationloginStartedResponseBuilder toBuilder() =>
      new ButtonvalidationloginStartedResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ButtonvalidationloginStartedResponse &&
        onclick == other.onclick &&
        label == other.label &&
        onclickData == other.onclickData &&
        onclickAction == other.onclickAction;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, onclick.hashCode);
    _$hash = $jc(_$hash, label.hashCode);
    _$hash = $jc(_$hash, onclickData.hashCode);
    _$hash = $jc(_$hash, onclickAction.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ButtonvalidationloginStartedResponse')
          ..add('onclick', onclick)
          ..add('label', label)
          ..add('onclickData', onclickData)
          ..add('onclickAction', onclickAction))
        .toString();
  }
}

class ButtonvalidationloginStartedResponseBuilder
    implements
        Builder<ButtonvalidationloginStartedResponse,
            ButtonvalidationloginStartedResponseBuilder> {
  _$ButtonvalidationloginStartedResponse? _$v;

  String? _onclick;
  String? get onclick => _$this._onclick;
  set onclick(String? onclick) => _$this._onclick = onclick;

  String? _label;
  String? get label => _$this._label;
  set label(String? label) => _$this._label = label;

  String? _onclickData;
  String? get onclickData => _$this._onclickData;
  set onclickData(String? onclickData) => _$this._onclickData = onclickData;

  String? _onclickAction;
  String? get onclickAction => _$this._onclickAction;
  set onclickAction(String? onclickAction) =>
      _$this._onclickAction = onclickAction;

  ButtonvalidationloginStartedResponseBuilder();

  ButtonvalidationloginStartedResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onclick = $v.onclick;
      _label = $v.label;
      _onclickData = $v.onclickData;
      _onclickAction = $v.onclickAction;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ButtonvalidationloginStartedResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ButtonvalidationloginStartedResponse;
  }

  @override
  void update(
      void Function(ButtonvalidationloginStartedResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ButtonvalidationloginStartedResponse build() => _build();

  _$ButtonvalidationloginStartedResponse _build() {
    final _$result = _$v ??
        new _$ButtonvalidationloginStartedResponse._(
            onclick: BuiltValueNullFieldError.checkNotNull(
                onclick, r'ButtonvalidationloginStartedResponse', 'onclick'),
            label: BuiltValueNullFieldError.checkNotNull(
                label, r'ButtonvalidationloginStartedResponse', 'label'),
            onclickData: BuiltValueNullFieldError.checkNotNull(onclickData,
                r'ButtonvalidationloginStartedResponse', 'onclickData'),
            onclickAction: BuiltValueNullFieldError.checkNotNull(onclickAction,
                r'ButtonvalidationloginStartedResponse', 'onclickAction'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
