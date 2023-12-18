// GENERATED CODE - DO NOT MODIFY BY HAND

part of login_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LoginResponse> _$loginResponseSerializer =
    new _$LoginResponseSerializer();
Serializer<ParamsLoginResponse> _$paramsLoginResponseSerializer =
    new _$ParamsLoginResponseSerializer();
Serializer<DataLoginResponse> _$dataLoginResponseSerializer =
    new _$DataLoginResponseSerializer();

class _$LoginResponseSerializer implements StructuredSerializer<LoginResponse> {
  @override
  final Iterable<Type> types = const [LoginResponse, _$LoginResponse];
  @override
  final String wireName = 'LoginResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, LoginResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.request;
    if (value != null) {
      result
        ..add('request')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.params;
    if (value != null) {
      result
        ..add('params')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(ParamsLoginResponse)));
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DataLoginResponse)));
    }
    value = object.httpstatut;
    if (value != null) {
      result
        ..add('httpstatut')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  LoginResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LoginResponseBuilder();

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
                  specifiedType: const FullType(ParamsLoginResponse))
              as ParamsLoginResponse);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataLoginResponse))
              as DataLoginResponse);
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

class _$ParamsLoginResponseSerializer
    implements StructuredSerializer<ParamsLoginResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsLoginResponse,
    _$ParamsLoginResponse
  ];
  @override
  final String wireName = 'ParamsLoginResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsLoginResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.password;
    if (value != null) {
      result
        ..add('password')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ParamsLoginResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsLoginResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'password':
          result.password = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataLoginResponseSerializer
    implements StructuredSerializer<DataLoginResponse> {
  @override
  final Iterable<Type> types = const [DataLoginResponse, _$DataLoginResponse];
  @override
  final String wireName = 'DataLoginResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, DataLoginResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.tokenuser;
    if (value != null) {
      result
        ..add('tokenuser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prenom;
    if (value != null) {
      result
        ..add('prenom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.mobile;
    if (value != null) {
      result
        ..add('mobile')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DataLoginResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataLoginResponseBuilder();

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
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'prenom':
          result.prenom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$LoginResponse extends LoginResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsLoginResponse params;
  @override
  final String message;
  @override
  final DataLoginResponse data;
  @override
  final int httpstatut;
  @override
  final String error;

  factory _$LoginResponse([void Function(LoginResponseBuilder) updates]) =>
      (new LoginResponseBuilder()..update(updates)).build();

  _$LoginResponse._(
      {this.version,
      this.request,
      this.params,
      this.message,
      this.data,
      this.httpstatut,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(version, 'LoginResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(message, 'LoginResponse', 'message');
  }

  @override
  LoginResponse rebuild(void Function(LoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseBuilder toBuilder() => new LoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponse &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        message == other.message &&
        data == other.data &&
        httpstatut == other.httpstatut &&
        error == other.error;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, version.hashCode), request.hashCode),
                        params.hashCode),
                    message.hashCode),
                data.hashCode),
            httpstatut.hashCode),
        error.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LoginResponse')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('data', data)
          ..add('httpstatut', httpstatut)
          ..add('error', error))
        .toString();
  }
}

class LoginResponseBuilder
    implements Builder<LoginResponse, LoginResponseBuilder> {
  _$LoginResponse _$v;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request;
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsLoginResponseBuilder _params;
  ParamsLoginResponseBuilder get params =>
      _$this._params ??= new ParamsLoginResponseBuilder();
  set params(ParamsLoginResponseBuilder params) => _$this._params = params;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DataLoginResponseBuilder _data;
  DataLoginResponseBuilder get data =>
      _$this._data ??= new DataLoginResponseBuilder();
  set data(DataLoginResponseBuilder data) => _$this._data = data;

  int _httpstatut;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  LoginResponseBuilder();

  LoginResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _request = $v.request;
      _params = $v.params?.toBuilder();
      _message = $v.message;
      _data = $v.data?.toBuilder();
      _httpstatut = $v.httpstatut;
      _error = $v.error;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$LoginResponse;
  }

  @override
  void update(void Function(LoginResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LoginResponse build() {
    _$LoginResponse _$result;
    try {
      _$result = _$v ??
          new _$LoginResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'LoginResponse', 'version'),
              request: request,
              params: _params?.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'LoginResponse', 'message'),
              data: _data?.build(),
              httpstatut: httpstatut,
              error: error);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'params';
        _params?.build();

        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'LoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsLoginResponse extends ParamsLoginResponse {
  @override
  final String email;
  @override
  final String password;

  factory _$ParamsLoginResponse(
          [void Function(ParamsLoginResponseBuilder) updates]) =>
      (new ParamsLoginResponseBuilder()..update(updates)).build();

  _$ParamsLoginResponse._({this.email, this.password}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        email, 'ParamsLoginResponse', 'email');
  }

  @override
  ParamsLoginResponse rebuild(
          void Function(ParamsLoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsLoginResponseBuilder toBuilder() =>
      new ParamsLoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsLoginResponse &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, email.hashCode), password.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsLoginResponse')
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class ParamsLoginResponseBuilder
    implements Builder<ParamsLoginResponse, ParamsLoginResponseBuilder> {
  _$ParamsLoginResponse _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _password;
  String get password => _$this._password;
  set password(String password) => _$this._password = password;

  ParamsLoginResponseBuilder();

  ParamsLoginResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsLoginResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsLoginResponse;
  }

  @override
  void update(void Function(ParamsLoginResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsLoginResponse build() {
    final _$result = _$v ??
        new _$ParamsLoginResponse._(
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'ParamsLoginResponse', 'email'),
            password: password);
    replace(_$result);
    return _$result;
  }
}

class _$DataLoginResponse extends DataLoginResponse {
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

  factory _$DataLoginResponse(
          [void Function(DataLoginResponseBuilder) updates]) =>
      (new DataLoginResponseBuilder()..update(updates)).build();

  _$DataLoginResponse._(
      {this.tokenuser, this.nom, this.prenom, this.email, this.mobile})
      : super._();

  @override
  DataLoginResponse rebuild(void Function(DataLoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataLoginResponseBuilder toBuilder() =>
      new DataLoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataLoginResponse &&
        tokenuser == other.tokenuser &&
        nom == other.nom &&
        prenom == other.prenom &&
        email == other.email &&
        mobile == other.mobile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, tokenuser.hashCode), nom.hashCode), prenom.hashCode),
            email.hashCode),
        mobile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataLoginResponse')
          ..add('tokenuser', tokenuser)
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('email', email)
          ..add('mobile', mobile))
        .toString();
  }
}

class DataLoginResponseBuilder
    implements Builder<DataLoginResponse, DataLoginResponseBuilder> {
  _$DataLoginResponse _$v;

  String _tokenuser;
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  String _prenom;
  String get prenom => _$this._prenom;
  set prenom(String prenom) => _$this._prenom = prenom;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _mobile;
  String get mobile => _$this._mobile;
  set mobile(String mobile) => _$this._mobile = mobile;

  DataLoginResponseBuilder();

  DataLoginResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _nom = $v.nom;
      _prenom = $v.prenom;
      _email = $v.email;
      _mobile = $v.mobile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataLoginResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataLoginResponse;
  }

  @override
  void update(void Function(DataLoginResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataLoginResponse build() {
    final _$result = _$v ??
        new _$DataLoginResponse._(
            tokenuser: tokenuser,
            nom: nom,
            prenom: prenom,
            email: email,
            mobile: mobile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
