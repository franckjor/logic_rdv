// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_patient_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreatePatientResponse> _$createPatientResponseSerializer =
    new _$CreatePatientResponseSerializer();
Serializer<ParamsCreatePatientResponse>
    _$paramsCreatePatientResponseSerializer =
    new _$ParamsCreatePatientResponseSerializer();

class _$CreatePatientResponseSerializer
    implements StructuredSerializer<CreatePatientResponse> {
  @override
  final Iterable<Type> types = const [
    CreatePatientResponse,
    _$CreatePatientResponse
  ];
  @override
  final String wireName = 'CreatePatientResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, CreatePatientResponse object,
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
          specifiedType: const FullType(ParamsCreatePatientResponse)),
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
  CreatePatientResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatePatientResponseBuilder();

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
                  specifiedType: const FullType(ParamsCreatePatientResponse))!
              as ParamsCreatePatientResponse);
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

class _$ParamsCreatePatientResponseSerializer
    implements StructuredSerializer<ParamsCreatePatientResponse> {
  @override
  final Iterable<Type> types = const [
    ParamsCreatePatientResponse,
    _$ParamsCreatePatientResponse
  ];
  @override
  final String wireName = 'ParamsCreatePatientResponse';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsCreatePatientResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'code',
      serializers.serialize(object.code, specifiedType: const FullType(String)),
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'prenom',
      serializers.serialize(object.prenom,
          specifiedType: const FullType(String)),
      'mobile',
      serializers.serialize(object.mobile,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'pass1',
      serializers.serialize(object.pass1,
          specifiedType: const FullType(String)),
      'pass2',
      serializers.serialize(object.pass2,
          specifiedType: const FullType(String)),
      'cgu',
      serializers.serialize(object.cgu, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsCreatePatientResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsCreatePatientResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
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
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pass1':
          result.pass1 = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'pass2':
          result.pass2 = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'cgu':
          result.cgu = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CreatePatientResponse extends CreatePatientResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsCreatePatientResponse params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;

  factory _$CreatePatientResponse(
          [void Function(CreatePatientResponseBuilder)? updates]) =>
      (new CreatePatientResponseBuilder()..update(updates))._build();

  _$CreatePatientResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'CreatePatientResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'CreatePatientResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'CreatePatientResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'CreatePatientResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'CreatePatientResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, r'CreatePatientResponse', 'error');
  }

  @override
  CreatePatientResponse rebuild(
          void Function(CreatePatientResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePatientResponseBuilder toBuilder() =>
      new CreatePatientResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePatientResponse &&
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
    return (newBuiltValueToStringHelper(r'CreatePatientResponse')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('httpstatut', httpstatut)
          ..add('error', error))
        .toString();
  }
}

class CreatePatientResponseBuilder
    implements Builder<CreatePatientResponse, CreatePatientResponseBuilder> {
  _$CreatePatientResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsCreatePatientResponseBuilder? _params;
  ParamsCreatePatientResponseBuilder get params =>
      _$this._params ??= new ParamsCreatePatientResponseBuilder();
  set params(ParamsCreatePatientResponseBuilder? params) =>
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

  CreatePatientResponseBuilder();

  CreatePatientResponseBuilder get _$this {
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
  void replace(CreatePatientResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePatientResponse;
  }

  @override
  void update(void Function(CreatePatientResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CreatePatientResponse build() => _build();

  _$CreatePatientResponse _build() {
    _$CreatePatientResponse _$result;
    try {
      _$result = _$v ??
          new _$CreatePatientResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'CreatePatientResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'CreatePatientResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'CreatePatientResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'CreatePatientResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'CreatePatientResponse', 'error'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'CreatePatientResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsCreatePatientResponse extends ParamsCreatePatientResponse {
  @override
  final String phone;
  @override
  final String id;
  @override
  final String code;
  @override
  final String nom;
  @override
  final String prenom;
  @override
  final String mobile;
  @override
  final String email;
  @override
  final String pass1;
  @override
  final String pass2;
  @override
  final String cgu;

  factory _$ParamsCreatePatientResponse(
          [void Function(ParamsCreatePatientResponseBuilder)? updates]) =>
      (new ParamsCreatePatientResponseBuilder()..update(updates))._build();

  _$ParamsCreatePatientResponse._(
      {required this.phone,
      required this.id,
      required this.code,
      required this.nom,
      required this.prenom,
      required this.mobile,
      required this.email,
      required this.pass1,
      required this.pass2,
      required this.cgu})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phone, r'ParamsCreatePatientResponse', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        id, r'ParamsCreatePatientResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        code, r'ParamsCreatePatientResponse', 'code');
    BuiltValueNullFieldError.checkNotNull(
        nom, r'ParamsCreatePatientResponse', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        prenom, r'ParamsCreatePatientResponse', 'prenom');
    BuiltValueNullFieldError.checkNotNull(
        mobile, r'ParamsCreatePatientResponse', 'mobile');
    BuiltValueNullFieldError.checkNotNull(
        email, r'ParamsCreatePatientResponse', 'email');
    BuiltValueNullFieldError.checkNotNull(
        pass1, r'ParamsCreatePatientResponse', 'pass1');
    BuiltValueNullFieldError.checkNotNull(
        pass2, r'ParamsCreatePatientResponse', 'pass2');
    BuiltValueNullFieldError.checkNotNull(
        cgu, r'ParamsCreatePatientResponse', 'cgu');
  }

  @override
  ParamsCreatePatientResponse rebuild(
          void Function(ParamsCreatePatientResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsCreatePatientResponseBuilder toBuilder() =>
      new ParamsCreatePatientResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsCreatePatientResponse &&
        phone == other.phone &&
        id == other.id &&
        code == other.code &&
        nom == other.nom &&
        prenom == other.prenom &&
        mobile == other.mobile &&
        email == other.email &&
        pass1 == other.pass1 &&
        pass2 == other.pass2 &&
        cgu == other.cgu;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, prenom.hashCode);
    _$hash = $jc(_$hash, mobile.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, pass1.hashCode);
    _$hash = $jc(_$hash, pass2.hashCode);
    _$hash = $jc(_$hash, cgu.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsCreatePatientResponse')
          ..add('phone', phone)
          ..add('id', id)
          ..add('code', code)
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('mobile', mobile)
          ..add('email', email)
          ..add('pass1', pass1)
          ..add('pass2', pass2)
          ..add('cgu', cgu))
        .toString();
  }
}

class ParamsCreatePatientResponseBuilder
    implements
        Builder<ParamsCreatePatientResponse,
            ParamsCreatePatientResponseBuilder> {
  _$ParamsCreatePatientResponse? _$v;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _prenom;
  String? get prenom => _$this._prenom;
  set prenom(String? prenom) => _$this._prenom = prenom;

  String? _mobile;
  String? get mobile => _$this._mobile;
  set mobile(String? mobile) => _$this._mobile = mobile;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _pass1;
  String? get pass1 => _$this._pass1;
  set pass1(String? pass1) => _$this._pass1 = pass1;

  String? _pass2;
  String? get pass2 => _$this._pass2;
  set pass2(String? pass2) => _$this._pass2 = pass2;

  String? _cgu;
  String? get cgu => _$this._cgu;
  set cgu(String? cgu) => _$this._cgu = cgu;

  ParamsCreatePatientResponseBuilder();

  ParamsCreatePatientResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _id = $v.id;
      _code = $v.code;
      _nom = $v.nom;
      _prenom = $v.prenom;
      _mobile = $v.mobile;
      _email = $v.email;
      _pass1 = $v.pass1;
      _pass2 = $v.pass2;
      _cgu = $v.cgu;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsCreatePatientResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsCreatePatientResponse;
  }

  @override
  void update(void Function(ParamsCreatePatientResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsCreatePatientResponse build() => _build();

  _$ParamsCreatePatientResponse _build() {
    final _$result = _$v ??
        new _$ParamsCreatePatientResponse._(
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'ParamsCreatePatientResponse', 'phone'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ParamsCreatePatientResponse', 'id'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'ParamsCreatePatientResponse', 'code'),
            nom: BuiltValueNullFieldError.checkNotNull(
                nom, r'ParamsCreatePatientResponse', 'nom'),
            prenom: BuiltValueNullFieldError.checkNotNull(
                prenom, r'ParamsCreatePatientResponse', 'prenom'),
            mobile: BuiltValueNullFieldError.checkNotNull(
                mobile, r'ParamsCreatePatientResponse', 'mobile'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'ParamsCreatePatientResponse', 'email'),
            pass1: BuiltValueNullFieldError.checkNotNull(
                pass1, r'ParamsCreatePatientResponse', 'pass1'),
            pass2:
                BuiltValueNullFieldError.checkNotNull(pass2, r'ParamsCreatePatientResponse', 'pass2'),
            cgu: BuiltValueNullFieldError.checkNotNull(cgu, r'ParamsCreatePatientResponse', 'cgu'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
