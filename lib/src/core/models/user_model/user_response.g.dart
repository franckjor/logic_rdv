// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserResponse> _$userResponseSerializer =
    new _$UserResponseSerializer();
Serializer<ParamsUserResponse> _$paramsUserResponseSerializer =
    new _$ParamsUserResponseSerializer();

class _$UserResponseSerializer implements StructuredSerializer<UserResponse> {
  @override
  final Iterable<Type> types = const [UserResponse, _$UserResponse];
  @override
  final String wireName = 'UserResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserResponse object,
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
          specifiedType: const FullType(ParamsUserResponse)),
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
  UserResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserResponseBuilder();

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
                  specifiedType: const FullType(ParamsUserResponse))!
              as ParamsUserResponse);
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

class _$ParamsUserResponseSerializer
    implements StructuredSerializer<ParamsUserResponse> {
  @override
  final Iterable<Type> types = const [ParamsUserResponse, _$ParamsUserResponse];
  @override
  final String wireName = 'ParamsUserResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsUserResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'compte_nom',
      serializers.serialize(object.compteNom,
          specifiedType: const FullType(String)),
      'compte_prenom',
      serializers.serialize(object.comptePrenom,
          specifiedType: const FullType(String)),
      'compte_email',
      serializers.serialize(object.compteEmail,
          specifiedType: const FullType(String)),
      'compte_mobile',
      serializers.serialize(object.compteMobile,
          specifiedType: const FullType(String)),
      'compte_adresse',
      serializers.serialize(object.compteAdresse,
          specifiedType: const FullType(String)),
      'compte_codepostal',
      serializers.serialize(object.compteCodepostal,
          specifiedType: const FullType(String)),
      'compte_ville',
      serializers.serialize(object.compteVille,
          specifiedType: const FullType(String)),
      'compte_password',
      serializers.serialize(object.comptePassword,
          specifiedType: const FullType(String)),
      'compte_password_conf',
      serializers.serialize(object.comptePasswordConf,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsUserResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsUserResponseBuilder();

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
        case 'compte_nom':
          result.compteNom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'compte_prenom':
          result.comptePrenom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'compte_email':
          result.compteEmail = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'compte_mobile':
          result.compteMobile = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'compte_adresse':
          result.compteAdresse = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'compte_codepostal':
          result.compteCodepostal = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'compte_ville':
          result.compteVille = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'compte_password':
          result.comptePassword = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'compte_password_conf':
          result.comptePasswordConf = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$UserResponse extends UserResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsUserResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;

  factory _$UserResponse([void Function(UserResponseBuilder)? updates]) =>
      (new UserResponseBuilder()..update(updates))._build();

  _$UserResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(version, r'UserResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(request, r'UserResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(params, r'UserResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(message, r'UserResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'UserResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(error, r'UserResponse', 'error');
  }

  @override
  UserResponse rebuild(void Function(UserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResponseBuilder toBuilder() => new UserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResponse &&
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
    return (newBuiltValueToStringHelper(r'UserResponse')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('httpstatut', httpstatut)
          ..add('error', error))
        .toString();
  }
}

class UserResponseBuilder
    implements Builder<UserResponse, UserResponseBuilder> {
  _$UserResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsUserResponseBuilder? _params;
  ParamsUserResponseBuilder get params =>
      _$this._params ??= new ParamsUserResponseBuilder();
  set params(ParamsUserResponseBuilder? params) => _$this._params = params;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  UserResponseBuilder();

  UserResponseBuilder get _$this {
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
  void replace(UserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserResponse;
  }

  @override
  void update(void Function(UserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResponse build() => _build();

  _$UserResponse _build() {
    _$UserResponse _$result;
    try {
      _$result = _$v ??
          new _$UserResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'UserResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'UserResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'UserResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'UserResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'UserResponse', 'error'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UserResponse', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsUserResponse extends ParamsUserResponse {
  @override
  final String tokenuser;
  @override
  final String compteNom;
  @override
  final String comptePrenom;
  @override
  final String compteEmail;
  @override
  final String compteMobile;
  @override
  final String compteAdresse;
  @override
  final String compteCodepostal;
  @override
  final String compteVille;
  @override
  final String comptePassword;
  @override
  final String comptePasswordConf;

  factory _$ParamsUserResponse(
          [void Function(ParamsUserResponseBuilder)? updates]) =>
      (new ParamsUserResponseBuilder()..update(updates))._build();

  _$ParamsUserResponse._(
      {required this.tokenuser,
      required this.compteNom,
      required this.comptePrenom,
      required this.compteEmail,
      required this.compteMobile,
      required this.compteAdresse,
      required this.compteCodepostal,
      required this.compteVille,
      required this.comptePassword,
      required this.comptePasswordConf})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'ParamsUserResponse', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        compteNom, r'ParamsUserResponse', 'compteNom');
    BuiltValueNullFieldError.checkNotNull(
        comptePrenom, r'ParamsUserResponse', 'comptePrenom');
    BuiltValueNullFieldError.checkNotNull(
        compteEmail, r'ParamsUserResponse', 'compteEmail');
    BuiltValueNullFieldError.checkNotNull(
        compteMobile, r'ParamsUserResponse', 'compteMobile');
    BuiltValueNullFieldError.checkNotNull(
        compteAdresse, r'ParamsUserResponse', 'compteAdresse');
    BuiltValueNullFieldError.checkNotNull(
        compteCodepostal, r'ParamsUserResponse', 'compteCodepostal');
    BuiltValueNullFieldError.checkNotNull(
        compteVille, r'ParamsUserResponse', 'compteVille');
    BuiltValueNullFieldError.checkNotNull(
        comptePassword, r'ParamsUserResponse', 'comptePassword');
    BuiltValueNullFieldError.checkNotNull(
        comptePasswordConf, r'ParamsUserResponse', 'comptePasswordConf');
  }

  @override
  ParamsUserResponse rebuild(
          void Function(ParamsUserResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsUserResponseBuilder toBuilder() =>
      new ParamsUserResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsUserResponse &&
        tokenuser == other.tokenuser &&
        compteNom == other.compteNom &&
        comptePrenom == other.comptePrenom &&
        compteEmail == other.compteEmail &&
        compteMobile == other.compteMobile &&
        compteAdresse == other.compteAdresse &&
        compteCodepostal == other.compteCodepostal &&
        compteVille == other.compteVille &&
        comptePassword == other.comptePassword &&
        comptePasswordConf == other.comptePasswordConf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jc(_$hash, compteNom.hashCode);
    _$hash = $jc(_$hash, comptePrenom.hashCode);
    _$hash = $jc(_$hash, compteEmail.hashCode);
    _$hash = $jc(_$hash, compteMobile.hashCode);
    _$hash = $jc(_$hash, compteAdresse.hashCode);
    _$hash = $jc(_$hash, compteCodepostal.hashCode);
    _$hash = $jc(_$hash, compteVille.hashCode);
    _$hash = $jc(_$hash, comptePassword.hashCode);
    _$hash = $jc(_$hash, comptePasswordConf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsUserResponse')
          ..add('tokenuser', tokenuser)
          ..add('compteNom', compteNom)
          ..add('comptePrenom', comptePrenom)
          ..add('compteEmail', compteEmail)
          ..add('compteMobile', compteMobile)
          ..add('compteAdresse', compteAdresse)
          ..add('compteCodepostal', compteCodepostal)
          ..add('compteVille', compteVille)
          ..add('comptePassword', comptePassword)
          ..add('comptePasswordConf', comptePasswordConf))
        .toString();
  }
}

class ParamsUserResponseBuilder
    implements Builder<ParamsUserResponse, ParamsUserResponseBuilder> {
  _$ParamsUserResponse? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _compteNom;
  String? get compteNom => _$this._compteNom;
  set compteNom(String? compteNom) => _$this._compteNom = compteNom;

  String? _comptePrenom;
  String? get comptePrenom => _$this._comptePrenom;
  set comptePrenom(String? comptePrenom) => _$this._comptePrenom = comptePrenom;

  String? _compteEmail;
  String? get compteEmail => _$this._compteEmail;
  set compteEmail(String? compteEmail) => _$this._compteEmail = compteEmail;

  String? _compteMobile;
  String? get compteMobile => _$this._compteMobile;
  set compteMobile(String? compteMobile) => _$this._compteMobile = compteMobile;

  String? _compteAdresse;
  String? get compteAdresse => _$this._compteAdresse;
  set compteAdresse(String? compteAdresse) =>
      _$this._compteAdresse = compteAdresse;

  String? _compteCodepostal;
  String? get compteCodepostal => _$this._compteCodepostal;
  set compteCodepostal(String? compteCodepostal) =>
      _$this._compteCodepostal = compteCodepostal;

  String? _compteVille;
  String? get compteVille => _$this._compteVille;
  set compteVille(String? compteVille) => _$this._compteVille = compteVille;

  String? _comptePassword;
  String? get comptePassword => _$this._comptePassword;
  set comptePassword(String? comptePassword) =>
      _$this._comptePassword = comptePassword;

  String? _comptePasswordConf;
  String? get comptePasswordConf => _$this._comptePasswordConf;
  set comptePasswordConf(String? comptePasswordConf) =>
      _$this._comptePasswordConf = comptePasswordConf;

  ParamsUserResponseBuilder();

  ParamsUserResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _compteNom = $v.compteNom;
      _comptePrenom = $v.comptePrenom;
      _compteEmail = $v.compteEmail;
      _compteMobile = $v.compteMobile;
      _compteAdresse = $v.compteAdresse;
      _compteCodepostal = $v.compteCodepostal;
      _compteVille = $v.compteVille;
      _comptePassword = $v.comptePassword;
      _comptePasswordConf = $v.comptePasswordConf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsUserResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsUserResponse;
  }

  @override
  void update(void Function(ParamsUserResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsUserResponse build() => _build();

  _$ParamsUserResponse _build() {
    final _$result = _$v ??
        new _$ParamsUserResponse._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'ParamsUserResponse', 'tokenuser'),
            compteNom: BuiltValueNullFieldError.checkNotNull(
                compteNom, r'ParamsUserResponse', 'compteNom'),
            comptePrenom: BuiltValueNullFieldError.checkNotNull(
                comptePrenom, r'ParamsUserResponse', 'comptePrenom'),
            compteEmail: BuiltValueNullFieldError.checkNotNull(
                compteEmail, r'ParamsUserResponse', 'compteEmail'),
            compteMobile: BuiltValueNullFieldError.checkNotNull(
                compteMobile, r'ParamsUserResponse', 'compteMobile'),
            compteAdresse: BuiltValueNullFieldError.checkNotNull(
                compteAdresse, r'ParamsUserResponse', 'compteAdresse'),
            compteCodepostal: BuiltValueNullFieldError.checkNotNull(
                compteCodepostal, r'ParamsUserResponse', 'compteCodepostal'),
            compteVille: BuiltValueNullFieldError.checkNotNull(
                compteVille, r'ParamsUserResponse', 'compteVille'),
            comptePassword:
                BuiltValueNullFieldError.checkNotNull(comptePassword, r'ParamsUserResponse', 'comptePassword'),
            comptePasswordConf: BuiltValueNullFieldError.checkNotNull(comptePasswordConf, r'ParamsUserResponse', 'comptePasswordConf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
