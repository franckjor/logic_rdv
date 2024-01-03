// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_process_response_end.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginProcessResponseEnd> _$loginProcessResponseEndSerializer =
    new _$LoginProcessResponseEndSerializer();
Serializer<ParamsLoginProcessResponseEnd>
    _$paramsLoginProcessResponseEndSerializer =
    new _$ParamsLoginProcessResponseEndSerializer();
Serializer<DataLoginProcessResponseEnd>
    _$dataLoginProcessResponseEndSerializer =
    new _$DataLoginProcessResponseEndSerializer();
Serializer<UserLoginProcessResponseEnd>
    _$userLoginProcessResponseEndSerializer =
    new _$UserLoginProcessResponseEndSerializer();

class _$LoginProcessResponseEndSerializer
    implements StructuredSerializer<LoginProcessResponseEnd> {
  @override
  final Iterable<Type> types = const [
    LoginProcessResponseEnd,
    _$LoginProcessResponseEnd
  ];
  @override
  final String wireName = 'LoginProcessResponseEnd';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, LoginProcessResponseEnd object,
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
          specifiedType: const FullType(ParamsLoginProcessResponseEnd)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataLoginProcessResponseEnd)),
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  LoginProcessResponseEnd deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginProcessResponseEndBuilder();

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
                  specifiedType: const FullType(ParamsLoginProcessResponseEnd))!
              as ParamsLoginProcessResponseEnd);
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
                  specifiedType: const FullType(DataLoginProcessResponseEnd))!
              as DataLoginProcessResponseEnd);
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

class _$ParamsLoginProcessResponseEndSerializer
    implements StructuredSerializer<ParamsLoginProcessResponseEnd> {
  @override
  final Iterable<Type> types = const [
    ParamsLoginProcessResponseEnd,
    _$ParamsLoginProcessResponseEnd
  ];
  @override
  final String wireName = 'ParamsLoginProcessResponseEnd';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsLoginProcessResponseEnd object,
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
  ParamsLoginProcessResponseEnd deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsLoginProcessResponseEndBuilder();

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

class _$DataLoginProcessResponseEndSerializer
    implements StructuredSerializer<DataLoginProcessResponseEnd> {
  @override
  final Iterable<Type> types = const [
    DataLoginProcessResponseEnd,
    _$DataLoginProcessResponseEnd
  ];
  @override
  final String wireName = 'DataLoginProcessResponseEnd';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataLoginProcessResponseEnd object,
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
      'buttonvalidation',
      serializers.serialize(object.buttonvalidation,
          specifiedType: const FullType(BuiltList,
              const [const FullType(ButtonvalidationloginStartedResponse)])),
    ];
    Object? value;
    value = object.user;
    if (value != null) {
      result
        ..add('user')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(UserLoginProcessResponseEnd)));
    }
    value = object.input;
    if (value != null) {
      result
        ..add('input')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(InputloginStartedResponse)])));
    }
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DataLoginProcessResponseEnd deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataLoginProcessResponseEndBuilder();

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
        case 'user':
          result.user.replace(serializers.deserialize(value,
                  specifiedType: const FullType(UserLoginProcessResponseEnd))!
              as UserLoginProcessResponseEnd);
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
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$UserLoginProcessResponseEndSerializer
    implements StructuredSerializer<UserLoginProcessResponseEnd> {
  @override
  final Iterable<Type> types = const [
    UserLoginProcessResponseEnd,
    _$UserLoginProcessResponseEnd
  ];
  @override
  final String wireName = 'UserLoginProcessResponseEnd';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UserLoginProcessResponseEnd object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'prenom',
      serializers.serialize(object.prenom,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'mobile',
      serializers.serialize(object.mobile,
          specifiedType: const FullType(String)),
      'timeout',
      serializers.serialize(object.timeout,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  UserLoginProcessResponseEnd deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserLoginProcessResponseEndBuilder();

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
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'prenom':
          result.prenom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'timeout':
          result.timeout = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginProcessResponseEnd extends LoginProcessResponseEnd {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsLoginProcessResponseEnd params;
  @override
  final String message;
  @override
  final String error;
  @override
  final DataLoginProcessResponseEnd data;
  @override
  final int httpstatut;

  factory _$LoginProcessResponseEnd(
          [void Function(LoginProcessResponseEndBuilder)? updates]) =>
      (new LoginProcessResponseEndBuilder()..update(updates))._build();

  _$LoginProcessResponseEnd._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.error,
      required this.data,
      required this.httpstatut})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'LoginProcessResponseEnd', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'LoginProcessResponseEnd', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'LoginProcessResponseEnd', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'LoginProcessResponseEnd', 'message');
    BuiltValueNullFieldError.checkNotNull(
        error, r'LoginProcessResponseEnd', 'error');
    BuiltValueNullFieldError.checkNotNull(
        data, r'LoginProcessResponseEnd', 'data');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'LoginProcessResponseEnd', 'httpstatut');
  }

  @override
  LoginProcessResponseEnd rebuild(
          void Function(LoginProcessResponseEndBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginProcessResponseEndBuilder toBuilder() =>
      new LoginProcessResponseEndBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginProcessResponseEnd &&
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
    return (newBuiltValueToStringHelper(r'LoginProcessResponseEnd')
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

class LoginProcessResponseEndBuilder
    implements
        Builder<LoginProcessResponseEnd, LoginProcessResponseEndBuilder> {
  _$LoginProcessResponseEnd? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsLoginProcessResponseEndBuilder? _params;
  ParamsLoginProcessResponseEndBuilder get params =>
      _$this._params ??= new ParamsLoginProcessResponseEndBuilder();
  set params(ParamsLoginProcessResponseEndBuilder? params) =>
      _$this._params = params;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DataLoginProcessResponseEndBuilder? _data;
  DataLoginProcessResponseEndBuilder get data =>
      _$this._data ??= new DataLoginProcessResponseEndBuilder();
  set data(DataLoginProcessResponseEndBuilder? data) => _$this._data = data;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  LoginProcessResponseEndBuilder();

  LoginProcessResponseEndBuilder get _$this {
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
  void replace(LoginProcessResponseEnd other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginProcessResponseEnd;
  }

  @override
  void update(void Function(LoginProcessResponseEndBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginProcessResponseEnd build() => _build();

  _$LoginProcessResponseEnd _build() {
    _$LoginProcessResponseEnd _$result;
    try {
      _$result = _$v ??
          new _$LoginProcessResponseEnd._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'LoginProcessResponseEnd', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'LoginProcessResponseEnd', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'LoginProcessResponseEnd', 'message'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'LoginProcessResponseEnd', 'error'),
              data: data.build(),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'LoginProcessResponseEnd', 'httpstatut'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();

        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'LoginProcessResponseEnd', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsLoginProcessResponseEnd extends ParamsLoginProcessResponseEnd {
  @override
  final String data;
  @override
  final String action;
  @override
  final String session;

  factory _$ParamsLoginProcessResponseEnd(
          [void Function(ParamsLoginProcessResponseEndBuilder)? updates]) =>
      (new ParamsLoginProcessResponseEndBuilder()..update(updates))._build();

  _$ParamsLoginProcessResponseEnd._(
      {required this.data, required this.action, required this.session})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        data, r'ParamsLoginProcessResponseEnd', 'data');
    BuiltValueNullFieldError.checkNotNull(
        action, r'ParamsLoginProcessResponseEnd', 'action');
    BuiltValueNullFieldError.checkNotNull(
        session, r'ParamsLoginProcessResponseEnd', 'session');
  }

  @override
  ParamsLoginProcessResponseEnd rebuild(
          void Function(ParamsLoginProcessResponseEndBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsLoginProcessResponseEndBuilder toBuilder() =>
      new ParamsLoginProcessResponseEndBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsLoginProcessResponseEnd &&
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
    return (newBuiltValueToStringHelper(r'ParamsLoginProcessResponseEnd')
          ..add('data', data)
          ..add('action', action)
          ..add('session', session))
        .toString();
  }
}

class ParamsLoginProcessResponseEndBuilder
    implements
        Builder<ParamsLoginProcessResponseEnd,
            ParamsLoginProcessResponseEndBuilder> {
  _$ParamsLoginProcessResponseEnd? _$v;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

  String? _action;
  String? get action => _$this._action;
  set action(String? action) => _$this._action = action;

  String? _session;
  String? get session => _$this._session;
  set session(String? session) => _$this._session = session;

  ParamsLoginProcessResponseEndBuilder();

  ParamsLoginProcessResponseEndBuilder get _$this {
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
  void replace(ParamsLoginProcessResponseEnd other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsLoginProcessResponseEnd;
  }

  @override
  void update(void Function(ParamsLoginProcessResponseEndBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsLoginProcessResponseEnd build() => _build();

  _$ParamsLoginProcessResponseEnd _build() {
    final _$result = _$v ??
        new _$ParamsLoginProcessResponseEnd._(
            data: BuiltValueNullFieldError.checkNotNull(
                data, r'ParamsLoginProcessResponseEnd', 'data'),
            action: BuiltValueNullFieldError.checkNotNull(
                action, r'ParamsLoginProcessResponseEnd', 'action'),
            session: BuiltValueNullFieldError.checkNotNull(
                session, r'ParamsLoginProcessResponseEnd', 'session'));
    replace(_$result);
    return _$result;
  }
}

class _$DataLoginProcessResponseEnd extends DataLoginProcessResponseEnd {
  @override
  final String headererror;
  @override
  final UserLoginProcessResponseEnd? user;
  @override
  final String type;
  @override
  final String headermessage;
  @override
  final BuiltList<InputloginStartedResponse>? input;
  @override
  final BuiltList<ButtonvalidationloginStartedResponse> buttonvalidation;
  @override
  final String? session;

  factory _$DataLoginProcessResponseEnd(
          [void Function(DataLoginProcessResponseEndBuilder)? updates]) =>
      (new DataLoginProcessResponseEndBuilder()..update(updates))._build();

  _$DataLoginProcessResponseEnd._(
      {required this.headererror,
      this.user,
      required this.type,
      required this.headermessage,
      this.input,
      required this.buttonvalidation,
      this.session})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        headererror, r'DataLoginProcessResponseEnd', 'headererror');
    BuiltValueNullFieldError.checkNotNull(
        type, r'DataLoginProcessResponseEnd', 'type');
    BuiltValueNullFieldError.checkNotNull(
        headermessage, r'DataLoginProcessResponseEnd', 'headermessage');
    BuiltValueNullFieldError.checkNotNull(
        buttonvalidation, r'DataLoginProcessResponseEnd', 'buttonvalidation');
  }

  @override
  DataLoginProcessResponseEnd rebuild(
          void Function(DataLoginProcessResponseEndBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataLoginProcessResponseEndBuilder toBuilder() =>
      new DataLoginProcessResponseEndBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataLoginProcessResponseEnd &&
        headererror == other.headererror &&
        user == other.user &&
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
    _$hash = $jc(_$hash, user.hashCode);
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
    return (newBuiltValueToStringHelper(r'DataLoginProcessResponseEnd')
          ..add('headererror', headererror)
          ..add('user', user)
          ..add('type', type)
          ..add('headermessage', headermessage)
          ..add('input', input)
          ..add('buttonvalidation', buttonvalidation)
          ..add('session', session))
        .toString();
  }
}

class DataLoginProcessResponseEndBuilder
    implements
        Builder<DataLoginProcessResponseEnd,
            DataLoginProcessResponseEndBuilder> {
  _$DataLoginProcessResponseEnd? _$v;

  String? _headererror;
  String? get headererror => _$this._headererror;
  set headererror(String? headererror) => _$this._headererror = headererror;

  UserLoginProcessResponseEndBuilder? _user;
  UserLoginProcessResponseEndBuilder get user =>
      _$this._user ??= new UserLoginProcessResponseEndBuilder();
  set user(UserLoginProcessResponseEndBuilder? user) => _$this._user = user;

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

  DataLoginProcessResponseEndBuilder();

  DataLoginProcessResponseEndBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headererror = $v.headererror;
      _user = $v.user?.toBuilder();
      _type = $v.type;
      _headermessage = $v.headermessage;
      _input = $v.input?.toBuilder();
      _buttonvalidation = $v.buttonvalidation.toBuilder();
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataLoginProcessResponseEnd other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataLoginProcessResponseEnd;
  }

  @override
  void update(void Function(DataLoginProcessResponseEndBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataLoginProcessResponseEnd build() => _build();

  _$DataLoginProcessResponseEnd _build() {
    _$DataLoginProcessResponseEnd _$result;
    try {
      _$result = _$v ??
          new _$DataLoginProcessResponseEnd._(
              headererror: BuiltValueNullFieldError.checkNotNull(
                  headererror, r'DataLoginProcessResponseEnd', 'headererror'),
              user: _user?.build(),
              type: BuiltValueNullFieldError.checkNotNull(
                  type, r'DataLoginProcessResponseEnd', 'type'),
              headermessage: BuiltValueNullFieldError.checkNotNull(
                  headermessage,
                  r'DataLoginProcessResponseEnd',
                  'headermessage'),
              input: _input?.build(),
              buttonvalidation: buttonvalidation.build(),
              session: session);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();

        _$failedField = 'input';
        _input?.build();
        _$failedField = 'buttonvalidation';
        buttonvalidation.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataLoginProcessResponseEnd', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$UserLoginProcessResponseEnd extends UserLoginProcessResponseEnd {
  @override
  final String tokenuser;
  @override
  final String nom;
  @override
  final String prenom;
  @override
  final String email;
  @override
  final String mobile;
  @override
  final String timeout;

  factory _$UserLoginProcessResponseEnd(
          [void Function(UserLoginProcessResponseEndBuilder)? updates]) =>
      (new UserLoginProcessResponseEndBuilder()..update(updates))._build();

  _$UserLoginProcessResponseEnd._(
      {required this.tokenuser,
      required this.nom,
      required this.prenom,
      required this.email,
      required this.mobile,
      required this.timeout})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'UserLoginProcessResponseEnd', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        nom, r'UserLoginProcessResponseEnd', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        prenom, r'UserLoginProcessResponseEnd', 'prenom');
    BuiltValueNullFieldError.checkNotNull(
        email, r'UserLoginProcessResponseEnd', 'email');
    BuiltValueNullFieldError.checkNotNull(
        mobile, r'UserLoginProcessResponseEnd', 'mobile');
    BuiltValueNullFieldError.checkNotNull(
        timeout, r'UserLoginProcessResponseEnd', 'timeout');
  }

  @override
  UserLoginProcessResponseEnd rebuild(
          void Function(UserLoginProcessResponseEndBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserLoginProcessResponseEndBuilder toBuilder() =>
      new UserLoginProcessResponseEndBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserLoginProcessResponseEnd &&
        tokenuser == other.tokenuser &&
        nom == other.nom &&
        prenom == other.prenom &&
        email == other.email &&
        mobile == other.mobile &&
        timeout == other.timeout;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, prenom.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, mobile.hashCode);
    _$hash = $jc(_$hash, timeout.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserLoginProcessResponseEnd')
          ..add('tokenuser', tokenuser)
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('email', email)
          ..add('mobile', mobile)
          ..add('timeout', timeout))
        .toString();
  }
}

class UserLoginProcessResponseEndBuilder
    implements
        Builder<UserLoginProcessResponseEnd,
            UserLoginProcessResponseEndBuilder> {
  _$UserLoginProcessResponseEnd? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _prenom;
  String? get prenom => _$this._prenom;
  set prenom(String? prenom) => _$this._prenom = prenom;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _mobile;
  String? get mobile => _$this._mobile;
  set mobile(String? mobile) => _$this._mobile = mobile;

  String? _timeout;
  String? get timeout => _$this._timeout;
  set timeout(String? timeout) => _$this._timeout = timeout;

  UserLoginProcessResponseEndBuilder();

  UserLoginProcessResponseEndBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _nom = $v.nom;
      _prenom = $v.prenom;
      _email = $v.email;
      _mobile = $v.mobile;
      _timeout = $v.timeout;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserLoginProcessResponseEnd other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserLoginProcessResponseEnd;
  }

  @override
  void update(void Function(UserLoginProcessResponseEndBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserLoginProcessResponseEnd build() => _build();

  _$UserLoginProcessResponseEnd _build() {
    final _$result = _$v ??
        new _$UserLoginProcessResponseEnd._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'UserLoginProcessResponseEnd', 'tokenuser'),
            nom: BuiltValueNullFieldError.checkNotNull(
                nom, r'UserLoginProcessResponseEnd', 'nom'),
            prenom: BuiltValueNullFieldError.checkNotNull(
                prenom, r'UserLoginProcessResponseEnd', 'prenom'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'UserLoginProcessResponseEnd', 'email'),
            mobile: BuiltValueNullFieldError.checkNotNull(
                mobile, r'UserLoginProcessResponseEnd', 'mobile'),
            timeout: BuiltValueNullFieldError.checkNotNull(
                timeout, r'UserLoginProcessResponseEnd', 'timeout'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
