// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_response_afert_create.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PatientResponseAfertCreate> _$patientResponseAfertCreateSerializer =
    new _$PatientResponseAfertCreateSerializer();
Serializer<ParamsPatientResponseAfertCreate>
    _$paramsPatientResponseAfertCreateSerializer =
    new _$ParamsPatientResponseAfertCreateSerializer();
Serializer<DataPatientResponseAfertCreate>
    _$dataPatientResponseAfertCreateSerializer =
    new _$DataPatientResponseAfertCreateSerializer();

class _$PatientResponseAfertCreateSerializer
    implements StructuredSerializer<PatientResponseAfertCreate> {
  @override
  final Iterable<Type> types = const [
    PatientResponseAfertCreate,
    _$PatientResponseAfertCreate
  ];
  @override
  final String wireName = 'PatientResponseAfertCreate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, PatientResponseAfertCreate object,
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
          specifiedType: const FullType(ParamsPatientResponseAfertCreate)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(BuiltList,
              const [const FullType(DataPatientResponseAfertCreate)])),
    ];

    return result;
  }

  @override
  PatientResponseAfertCreate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientResponseAfertCreateBuilder();

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
                      const FullType(ParamsPatientResponseAfertCreate))!
              as ParamsPatientResponseAfertCreate);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(DataPatientResponseAfertCreate)
              ]))! as BuiltList<Object?>);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsPatientResponseAfertCreateSerializer
    implements StructuredSerializer<ParamsPatientResponseAfertCreate> {
  @override
  final Iterable<Type> types = const [
    ParamsPatientResponseAfertCreate,
    _$ParamsPatientResponseAfertCreate
  ];
  @override
  final String wireName = 'ParamsPatientResponseAfertCreate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ParamsPatientResponseAfertCreate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.tokenuser;
    if (value != null) {
      result
        ..add('tokenuser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.tokenappt;
    if (value != null) {
      result
        ..add('tokenappt')
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
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ParamsPatientResponseAfertCreate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsPatientResponseAfertCreateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'tokenappt':
          result.tokenappt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prenom':
          result.prenom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$DataPatientResponseAfertCreateSerializer
    implements StructuredSerializer<DataPatientResponseAfertCreate> {
  @override
  final Iterable<Type> types = const [
    DataPatientResponseAfertCreate,
    _$DataPatientResponseAfertCreate
  ];
  @override
  final String wireName = 'DataPatientResponseAfertCreate';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, DataPatientResponseAfertCreate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'prenom',
      serializers.serialize(object.prenom,
          specifiedType: const FullType(String)),
      'email',
      serializers.serialize(object.email,
          specifiedType: const FullType(String)),
      'dob',
      serializers.serialize(object.dob, specifiedType: const FullType(String)),
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
      'locked',
      serializers.serialize(object.locked,
          specifiedType: const FullType(String)),
      'blacklist',
      serializers.serialize(object.blacklist,
          specifiedType: const FullType(String)),
      'nplocked',
      serializers.serialize(object.nplocked,
          specifiedType: const FullType(String)),
      'etaballowinternet',
      serializers.serialize(object.etaballowinternet,
          specifiedType: const FullType(String)),
      'etaballownpinternet',
      serializers.serialize(object.etaballownpinternet,
          specifiedType: const FullType(String)),
    ];
    Object? value;
    value = object.nom;
    if (value != null) {
      result
        ..add('nom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.spacephone;
    if (value != null) {
      result
        ..add('spacephone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.phone;
    if (value != null) {
      result
        ..add('phone')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lockmessage;
    if (value != null) {
      result
        ..add('lockmessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photo;
    if (value != null) {
      result
        ..add('photo')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DataPatientResponseAfertCreate deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataPatientResponseAfertCreateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'prenom':
          result.prenom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'spacephone':
          result.spacephone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dob':
          result.dob = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'locked':
          result.locked = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'blacklist':
          result.blacklist = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nplocked':
          result.nplocked = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'etaballowinternet':
          result.etaballowinternet = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'etaballownpinternet':
          result.etaballownpinternet = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lockmessage':
          result.lockmessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photo':
          result.photo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
      }
    }

    return result.build();
  }
}

class _$PatientResponseAfertCreate extends PatientResponseAfertCreate {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsPatientResponseAfertCreate params;
  @override
  final String error;
  @override
  final String message;
  @override
  final BuiltList<DataPatientResponseAfertCreate> data;

  factory _$PatientResponseAfertCreate(
          [void Function(PatientResponseAfertCreateBuilder)? updates]) =>
      (new PatientResponseAfertCreateBuilder()..update(updates))._build();

  _$PatientResponseAfertCreate._(
      {required this.httpstatut,
      required this.version,
      required this.request,
      required this.params,
      required this.error,
      required this.message,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'PatientResponseAfertCreate', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, r'PatientResponseAfertCreate', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'PatientResponseAfertCreate', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'PatientResponseAfertCreate', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, r'PatientResponseAfertCreate', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, r'PatientResponseAfertCreate', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, r'PatientResponseAfertCreate', 'data');
  }

  @override
  PatientResponseAfertCreate rebuild(
          void Function(PatientResponseAfertCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientResponseAfertCreateBuilder toBuilder() =>
      new PatientResponseAfertCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientResponseAfertCreate &&
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
    var _$hash = 0;
    _$hash = $jc(_$hash, httpstatut.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jc(_$hash, params.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, message.hashCode);
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientResponseAfertCreate')
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

class PatientResponseAfertCreateBuilder
    implements
        Builder<PatientResponseAfertCreate, PatientResponseAfertCreateBuilder> {
  _$PatientResponseAfertCreate? _$v;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsPatientResponseAfertCreateBuilder? _params;
  ParamsPatientResponseAfertCreateBuilder get params =>
      _$this._params ??= new ParamsPatientResponseAfertCreateBuilder();
  set params(ParamsPatientResponseAfertCreateBuilder? params) =>
      _$this._params = params;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  ListBuilder<DataPatientResponseAfertCreate>? _data;
  ListBuilder<DataPatientResponseAfertCreate> get data =>
      _$this._data ??= new ListBuilder<DataPatientResponseAfertCreate>();
  set data(ListBuilder<DataPatientResponseAfertCreate>? data) =>
      _$this._data = data;

  PatientResponseAfertCreateBuilder();

  PatientResponseAfertCreateBuilder get _$this {
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
  void replace(PatientResponseAfertCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientResponseAfertCreate;
  }

  @override
  void update(void Function(PatientResponseAfertCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientResponseAfertCreate build() => _build();

  _$PatientResponseAfertCreate _build() {
    _$PatientResponseAfertCreate _$result;
    try {
      _$result = _$v ??
          new _$PatientResponseAfertCreate._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'PatientResponseAfertCreate', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'PatientResponseAfertCreate', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'PatientResponseAfertCreate', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'PatientResponseAfertCreate', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'PatientResponseAfertCreate', 'message'),
              data: data.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'params';
        params.build();

        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PatientResponseAfertCreate', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsPatientResponseAfertCreate
    extends ParamsPatientResponseAfertCreate {
  @override
  final String? tokenuser;
  @override
  final String? tokenappt;
  @override
  final String? nom;
  @override
  final String? prenom;
  @override
  final String? email;
  @override
  final String? phone;

  factory _$ParamsPatientResponseAfertCreate(
          [void Function(ParamsPatientResponseAfertCreateBuilder)? updates]) =>
      (new ParamsPatientResponseAfertCreateBuilder()..update(updates))._build();

  _$ParamsPatientResponseAfertCreate._(
      {this.tokenuser,
      this.tokenappt,
      this.nom,
      this.prenom,
      this.email,
      this.phone})
      : super._();

  @override
  ParamsPatientResponseAfertCreate rebuild(
          void Function(ParamsPatientResponseAfertCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsPatientResponseAfertCreateBuilder toBuilder() =>
      new ParamsPatientResponseAfertCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsPatientResponseAfertCreate &&
        tokenuser == other.tokenuser &&
        tokenappt == other.tokenappt &&
        nom == other.nom &&
        prenom == other.prenom &&
        email == other.email &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jc(_$hash, tokenappt.hashCode);
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, prenom.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsPatientResponseAfertCreate')
          ..add('tokenuser', tokenuser)
          ..add('tokenappt', tokenappt)
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('email', email)
          ..add('phone', phone))
        .toString();
  }
}

class ParamsPatientResponseAfertCreateBuilder
    implements
        Builder<ParamsPatientResponseAfertCreate,
            ParamsPatientResponseAfertCreateBuilder> {
  _$ParamsPatientResponseAfertCreate? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _tokenappt;
  String? get tokenappt => _$this._tokenappt;
  set tokenappt(String? tokenappt) => _$this._tokenappt = tokenappt;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _prenom;
  String? get prenom => _$this._prenom;
  set prenom(String? prenom) => _$this._prenom = prenom;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  ParamsPatientResponseAfertCreateBuilder();

  ParamsPatientResponseAfertCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _tokenappt = $v.tokenappt;
      _nom = $v.nom;
      _prenom = $v.prenom;
      _email = $v.email;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsPatientResponseAfertCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsPatientResponseAfertCreate;
  }

  @override
  void update(void Function(ParamsPatientResponseAfertCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsPatientResponseAfertCreate build() => _build();

  _$ParamsPatientResponseAfertCreate _build() {
    final _$result = _$v ??
        new _$ParamsPatientResponseAfertCreate._(
            tokenuser: tokenuser,
            tokenappt: tokenappt,
            nom: nom,
            prenom: prenom,
            email: email,
            phone: phone);
    replace(_$result);
    return _$result;
  }
}

class _$DataPatientResponseAfertCreate extends DataPatientResponseAfertCreate {
  @override
  final String? nom;
  @override
  final String prenom;
  @override
  final String email;
  @override
  final String? spacephone;
  @override
  final String? phone;
  @override
  final String dob;
  @override
  final String token;
  @override
  final String locked;
  @override
  final String blacklist;
  @override
  final String nplocked;
  @override
  final String etaballowinternet;
  @override
  final String etaballownpinternet;
  @override
  final String? lockmessage;
  @override
  final String? photo;

  factory _$DataPatientResponseAfertCreate(
          [void Function(DataPatientResponseAfertCreateBuilder)? updates]) =>
      (new DataPatientResponseAfertCreateBuilder()..update(updates))._build();

  _$DataPatientResponseAfertCreate._(
      {this.nom,
      required this.prenom,
      required this.email,
      this.spacephone,
      this.phone,
      required this.dob,
      required this.token,
      required this.locked,
      required this.blacklist,
      required this.nplocked,
      required this.etaballowinternet,
      required this.etaballownpinternet,
      this.lockmessage,
      this.photo})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        prenom, r'DataPatientResponseAfertCreate', 'prenom');
    BuiltValueNullFieldError.checkNotNull(
        email, r'DataPatientResponseAfertCreate', 'email');
    BuiltValueNullFieldError.checkNotNull(
        dob, r'DataPatientResponseAfertCreate', 'dob');
    BuiltValueNullFieldError.checkNotNull(
        token, r'DataPatientResponseAfertCreate', 'token');
    BuiltValueNullFieldError.checkNotNull(
        locked, r'DataPatientResponseAfertCreate', 'locked');
    BuiltValueNullFieldError.checkNotNull(
        blacklist, r'DataPatientResponseAfertCreate', 'blacklist');
    BuiltValueNullFieldError.checkNotNull(
        nplocked, r'DataPatientResponseAfertCreate', 'nplocked');
    BuiltValueNullFieldError.checkNotNull(etaballowinternet,
        r'DataPatientResponseAfertCreate', 'etaballowinternet');
    BuiltValueNullFieldError.checkNotNull(etaballownpinternet,
        r'DataPatientResponseAfertCreate', 'etaballownpinternet');
  }

  @override
  DataPatientResponseAfertCreate rebuild(
          void Function(DataPatientResponseAfertCreateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataPatientResponseAfertCreateBuilder toBuilder() =>
      new DataPatientResponseAfertCreateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataPatientResponseAfertCreate &&
        nom == other.nom &&
        prenom == other.prenom &&
        email == other.email &&
        spacephone == other.spacephone &&
        phone == other.phone &&
        dob == other.dob &&
        token == other.token &&
        locked == other.locked &&
        blacklist == other.blacklist &&
        nplocked == other.nplocked &&
        etaballowinternet == other.etaballowinternet &&
        etaballownpinternet == other.etaballownpinternet &&
        lockmessage == other.lockmessage &&
        photo == other.photo;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, prenom.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, spacephone.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jc(_$hash, dob.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jc(_$hash, locked.hashCode);
    _$hash = $jc(_$hash, blacklist.hashCode);
    _$hash = $jc(_$hash, nplocked.hashCode);
    _$hash = $jc(_$hash, etaballowinternet.hashCode);
    _$hash = $jc(_$hash, etaballownpinternet.hashCode);
    _$hash = $jc(_$hash, lockmessage.hashCode);
    _$hash = $jc(_$hash, photo.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataPatientResponseAfertCreate')
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('email', email)
          ..add('spacephone', spacephone)
          ..add('phone', phone)
          ..add('dob', dob)
          ..add('token', token)
          ..add('locked', locked)
          ..add('blacklist', blacklist)
          ..add('nplocked', nplocked)
          ..add('etaballowinternet', etaballowinternet)
          ..add('etaballownpinternet', etaballownpinternet)
          ..add('lockmessage', lockmessage)
          ..add('photo', photo))
        .toString();
  }
}

class DataPatientResponseAfertCreateBuilder
    implements
        Builder<DataPatientResponseAfertCreate,
            DataPatientResponseAfertCreateBuilder> {
  _$DataPatientResponseAfertCreate? _$v;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _prenom;
  String? get prenom => _$this._prenom;
  set prenom(String? prenom) => _$this._prenom = prenom;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _spacephone;
  String? get spacephone => _$this._spacephone;
  set spacephone(String? spacephone) => _$this._spacephone = spacephone;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  String? _dob;
  String? get dob => _$this._dob;
  set dob(String? dob) => _$this._dob = dob;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  String? _locked;
  String? get locked => _$this._locked;
  set locked(String? locked) => _$this._locked = locked;

  String? _blacklist;
  String? get blacklist => _$this._blacklist;
  set blacklist(String? blacklist) => _$this._blacklist = blacklist;

  String? _nplocked;
  String? get nplocked => _$this._nplocked;
  set nplocked(String? nplocked) => _$this._nplocked = nplocked;

  String? _etaballowinternet;
  String? get etaballowinternet => _$this._etaballowinternet;
  set etaballowinternet(String? etaballowinternet) =>
      _$this._etaballowinternet = etaballowinternet;

  String? _etaballownpinternet;
  String? get etaballownpinternet => _$this._etaballownpinternet;
  set etaballownpinternet(String? etaballownpinternet) =>
      _$this._etaballownpinternet = etaballownpinternet;

  String? _lockmessage;
  String? get lockmessage => _$this._lockmessage;
  set lockmessage(String? lockmessage) => _$this._lockmessage = lockmessage;

  String? _photo;
  String? get photo => _$this._photo;
  set photo(String? photo) => _$this._photo = photo;

  DataPatientResponseAfertCreateBuilder();

  DataPatientResponseAfertCreateBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _nom = $v.nom;
      _prenom = $v.prenom;
      _email = $v.email;
      _spacephone = $v.spacephone;
      _phone = $v.phone;
      _dob = $v.dob;
      _token = $v.token;
      _locked = $v.locked;
      _blacklist = $v.blacklist;
      _nplocked = $v.nplocked;
      _etaballowinternet = $v.etaballowinternet;
      _etaballownpinternet = $v.etaballownpinternet;
      _lockmessage = $v.lockmessage;
      _photo = $v.photo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataPatientResponseAfertCreate other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataPatientResponseAfertCreate;
  }

  @override
  void update(void Function(DataPatientResponseAfertCreateBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataPatientResponseAfertCreate build() => _build();

  _$DataPatientResponseAfertCreate _build() {
    final _$result = _$v ??
        new _$DataPatientResponseAfertCreate._(
            nom: nom,
            prenom: BuiltValueNullFieldError.checkNotNull(
                prenom, r'DataPatientResponseAfertCreate', 'prenom'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, r'DataPatientResponseAfertCreate', 'email'),
            spacephone: spacephone,
            phone: phone,
            dob: BuiltValueNullFieldError.checkNotNull(
                dob, r'DataPatientResponseAfertCreate', 'dob'),
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'DataPatientResponseAfertCreate', 'token'),
            locked: BuiltValueNullFieldError.checkNotNull(
                locked, r'DataPatientResponseAfertCreate', 'locked'),
            blacklist: BuiltValueNullFieldError.checkNotNull(
                blacklist, r'DataPatientResponseAfertCreate', 'blacklist'),
            nplocked: BuiltValueNullFieldError.checkNotNull(
                nplocked, r'DataPatientResponseAfertCreate', 'nplocked'),
            etaballowinternet: BuiltValueNullFieldError.checkNotNull(
                etaballowinternet, r'DataPatientResponseAfertCreate', 'etaballowinternet'),
            etaballownpinternet:
                BuiltValueNullFieldError.checkNotNull(etaballownpinternet, r'DataPatientResponseAfertCreate', 'etaballownpinternet'),
            lockmessage: lockmessage,
            photo: photo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
