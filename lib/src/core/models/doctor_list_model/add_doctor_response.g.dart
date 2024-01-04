// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'add_doctor_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddDoctorResponse> _$addDoctorResponseSerializer =
    new _$AddDoctorResponseSerializer();
Serializer<ParamsAddDoctor> _$paramsAddDoctorSerializer =
    new _$ParamsAddDoctorSerializer();
Serializer<DataAddDoctor> _$dataAddDoctorSerializer =
    new _$DataAddDoctorSerializer();
Serializer<EtablissementAddDoctor> _$etablissementAddDoctorSerializer =
    new _$EtablissementAddDoctorSerializer();
Serializer<AppointmentAddDoctor> _$appointmentAddDoctorSerializer =
    new _$AppointmentAddDoctorSerializer();

class _$AddDoctorResponseSerializer
    implements StructuredSerializer<AddDoctorResponse> {
  @override
  final Iterable<Type> types = const [AddDoctorResponse, _$AddDoctorResponse];
  @override
  final String wireName = 'AddDoctorResponse';

  @override
  Iterable<Object?> serialize(Serializers serializers, AddDoctorResponse object,
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
          specifiedType: const FullType(ParamsAddDoctor)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataAddDoctor)),
    ];

    return result;
  }

  @override
  AddDoctorResponse deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddDoctorResponseBuilder();

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
                  specifiedType: const FullType(ParamsAddDoctor))!
              as ParamsAddDoctor);
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
        case 'data':
          result.data.replace(serializers.deserialize(value,
              specifiedType: const FullType(DataAddDoctor))! as DataAddDoctor);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsAddDoctorSerializer
    implements StructuredSerializer<ParamsAddDoctor> {
  @override
  final Iterable<Type> types = const [ParamsAddDoctor, _$ParamsAddDoctor];
  @override
  final String wireName = 'ParamsAddDoctor';

  @override
  Iterable<Object?> serialize(Serializers serializers, ParamsAddDoctor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsAddDoctor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsAddDoctorBuilder();

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
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataAddDoctorSerializer implements StructuredSerializer<DataAddDoctor> {
  @override
  final Iterable<Type> types = const [DataAddDoctor, _$DataAddDoctor];
  @override
  final String wireName = 'DataAddDoctor';

  @override
  Iterable<Object?> serialize(Serializers serializers, DataAddDoctor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'etablissement',
      serializers.serialize(object.etablissement,
          specifiedType: const FullType(EtablissementAddDoctor)),
    ];

    return result;
  }

  @override
  DataAddDoctor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataAddDoctorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'etablissement':
          result.etablissement.replace(serializers.deserialize(value,
                  specifiedType: const FullType(EtablissementAddDoctor))!
              as EtablissementAddDoctor);
          break;
      }
    }

    return result.build();
  }
}

class _$EtablissementAddDoctorSerializer
    implements StructuredSerializer<EtablissementAddDoctor> {
  @override
  final Iterable<Type> types = const [
    EtablissementAddDoctor,
    _$EtablissementAddDoctor
  ];
  @override
  final String wireName = 'EtablissementAddDoctor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, EtablissementAddDoctor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'zip',
      serializers.serialize(object.zip, specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'internet',
      serializers.serialize(object.internet,
          specifiedType: const FullType(int)),
      'id_city',
      serializers.serialize(object.idCity,
          specifiedType: const FullType(String)),
      'telnospace',
      serializers.serialize(object.telnospace,
          specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(String)),
      'lng',
      serializers.serialize(object.lng, specifiedType: const FullType(String)),
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'id_category',
      serializers.serialize(object.idCategory,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
      'km_diff',
      serializers.serialize(object.kmDiff,
          specifiedType: const FullType(String)),
      'civility',
      serializers.serialize(object.civility,
          specifiedType: const FullType(String)),
      'tel',
      serializers.serialize(object.tel, specifiedType: const FullType(String)),
      'id_agenda',
      serializers.serialize(object.idAgenda,
          specifiedType: const FullType(String)),
      'appointment',
      serializers.serialize(object.appointment,
          specifiedType: const FullType(AppointmentAddDoctor)),
      'isother',
      serializers.serialize(object.isother, specifiedType: const FullType(int)),
    ];

    return result;
  }

  @override
  EtablissementAddDoctor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EtablissementAddDoctorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'internet':
          result.internet = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
        case 'id_city':
          result.idCity = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'telnospace':
          result.telnospace = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id_category':
          result.idCategory = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'km_diff':
          result.kmDiff = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'civility':
          result.civility = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'tel':
          result.tel = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'id_agenda':
          result.idAgenda = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
        case 'appointment':
          result.appointment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AppointmentAddDoctor))!
              as AppointmentAddDoctor);
          break;
        case 'isother':
          result.isother = serializers.deserialize(value,
              specifiedType: const FullType(int))! as int;
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentAddDoctorSerializer
    implements StructuredSerializer<AppointmentAddDoctor> {
  @override
  final Iterable<Type> types = const [
    AppointmentAddDoctor,
    _$AppointmentAddDoctor
  ];
  @override
  final String wireName = 'AppointmentAddDoctor';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, AppointmentAddDoctor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AppointmentAddDoctor deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentAddDoctorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AddDoctorResponse extends AddDoctorResponse {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsAddDoctor params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataAddDoctor data;

  factory _$AddDoctorResponse(
          [void Function(AddDoctorResponseBuilder)? updates]) =>
      (new AddDoctorResponseBuilder()..update(updates))._build();

  _$AddDoctorResponse._(
      {required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error,
      required this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, r'AddDoctorResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, r'AddDoctorResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, r'AddDoctorResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, r'AddDoctorResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, r'AddDoctorResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(error, r'AddDoctorResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(data, r'AddDoctorResponse', 'data');
  }

  @override
  AddDoctorResponse rebuild(void Function(AddDoctorResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AddDoctorResponseBuilder toBuilder() =>
      new AddDoctorResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddDoctorResponse &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        message == other.message &&
        httpstatut == other.httpstatut &&
        error == other.error &&
        data == other.data;
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
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AddDoctorResponse')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('httpstatut', httpstatut)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class AddDoctorResponseBuilder
    implements Builder<AddDoctorResponse, AddDoctorResponseBuilder> {
  _$AddDoctorResponse? _$v;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  String? _request;
  String? get request => _$this._request;
  set request(String? request) => _$this._request = request;

  ParamsAddDoctorBuilder? _params;
  ParamsAddDoctorBuilder get params =>
      _$this._params ??= new ParamsAddDoctorBuilder();
  set params(ParamsAddDoctorBuilder? params) => _$this._params = params;

  String? _message;
  String? get message => _$this._message;
  set message(String? message) => _$this._message = message;

  int? _httpstatut;
  int? get httpstatut => _$this._httpstatut;
  set httpstatut(int? httpstatut) => _$this._httpstatut = httpstatut;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  DataAddDoctorBuilder? _data;
  DataAddDoctorBuilder get data => _$this._data ??= new DataAddDoctorBuilder();
  set data(DataAddDoctorBuilder? data) => _$this._data = data;

  AddDoctorResponseBuilder();

  AddDoctorResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _message = $v.message;
      _httpstatut = $v.httpstatut;
      _error = $v.error;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AddDoctorResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddDoctorResponse;
  }

  @override
  void update(void Function(AddDoctorResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AddDoctorResponse build() => _build();

  _$AddDoctorResponse _build() {
    _$AddDoctorResponse _$result;
    try {
      _$result = _$v ??
          new _$AddDoctorResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, r'AddDoctorResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, r'AddDoctorResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, r'AddDoctorResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, r'AddDoctorResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, r'AddDoctorResponse', 'error'),
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
            r'AddDoctorResponse', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsAddDoctor extends ParamsAddDoctor {
  @override
  final String tokenuser;
  @override
  final String id;
  @override
  final String phone;

  factory _$ParamsAddDoctor([void Function(ParamsAddDoctorBuilder)? updates]) =>
      (new ParamsAddDoctorBuilder()..update(updates))._build();

  _$ParamsAddDoctor._(
      {required this.tokenuser, required this.id, required this.phone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, r'ParamsAddDoctor', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(id, r'ParamsAddDoctor', 'id');
    BuiltValueNullFieldError.checkNotNull(phone, r'ParamsAddDoctor', 'phone');
  }

  @override
  ParamsAddDoctor rebuild(void Function(ParamsAddDoctorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsAddDoctorBuilder toBuilder() =>
      new ParamsAddDoctorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsAddDoctor &&
        tokenuser == other.tokenuser &&
        id == other.id &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, tokenuser.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ParamsAddDoctor')
          ..add('tokenuser', tokenuser)
          ..add('id', id)
          ..add('phone', phone))
        .toString();
  }
}

class ParamsAddDoctorBuilder
    implements Builder<ParamsAddDoctor, ParamsAddDoctorBuilder> {
  _$ParamsAddDoctor? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _phone;
  String? get phone => _$this._phone;
  set phone(String? phone) => _$this._phone = phone;

  ParamsAddDoctorBuilder();

  ParamsAddDoctorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _id = $v.id;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsAddDoctor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsAddDoctor;
  }

  @override
  void update(void Function(ParamsAddDoctorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ParamsAddDoctor build() => _build();

  _$ParamsAddDoctor _build() {
    final _$result = _$v ??
        new _$ParamsAddDoctor._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'ParamsAddDoctor', 'tokenuser'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'ParamsAddDoctor', 'id'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, r'ParamsAddDoctor', 'phone'));
    replace(_$result);
    return _$result;
  }
}

class _$DataAddDoctor extends DataAddDoctor {
  @override
  final EtablissementAddDoctor etablissement;

  factory _$DataAddDoctor([void Function(DataAddDoctorBuilder)? updates]) =>
      (new DataAddDoctorBuilder()..update(updates))._build();

  _$DataAddDoctor._({required this.etablissement}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        etablissement, r'DataAddDoctor', 'etablissement');
  }

  @override
  DataAddDoctor rebuild(void Function(DataAddDoctorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataAddDoctorBuilder toBuilder() => new DataAddDoctorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataAddDoctor && etablissement == other.etablissement;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, etablissement.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'DataAddDoctor')
          ..add('etablissement', etablissement))
        .toString();
  }
}

class DataAddDoctorBuilder
    implements Builder<DataAddDoctor, DataAddDoctorBuilder> {
  _$DataAddDoctor? _$v;

  EtablissementAddDoctorBuilder? _etablissement;
  EtablissementAddDoctorBuilder get etablissement =>
      _$this._etablissement ??= new EtablissementAddDoctorBuilder();
  set etablissement(EtablissementAddDoctorBuilder? etablissement) =>
      _$this._etablissement = etablissement;

  DataAddDoctorBuilder();

  DataAddDoctorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _etablissement = $v.etablissement.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataAddDoctor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataAddDoctor;
  }

  @override
  void update(void Function(DataAddDoctorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DataAddDoctor build() => _build();

  _$DataAddDoctor _build() {
    _$DataAddDoctor _$result;
    try {
      _$result =
          _$v ?? new _$DataAddDoctor._(etablissement: etablissement.build());
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'etablissement';
        etablissement.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'DataAddDoctor', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$EtablissementAddDoctor extends EtablissementAddDoctor {
  @override
  final String id;
  @override
  final String nom;
  @override
  final String address;
  @override
  final String zip;
  @override
  final String city;
  @override
  final int internet;
  @override
  final String idCity;
  @override
  final String telnospace;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final String category;
  @override
  final String idCategory;
  @override
  final String icon;
  @override
  final String kmDiff;
  @override
  final String civility;
  @override
  final String tel;
  @override
  final String idAgenda;
  @override
  final AppointmentAddDoctor appointment;
  @override
  final int isother;

  factory _$EtablissementAddDoctor(
          [void Function(EtablissementAddDoctorBuilder)? updates]) =>
      (new EtablissementAddDoctorBuilder()..update(updates))._build();

  _$EtablissementAddDoctor._(
      {required this.id,
      required this.nom,
      required this.address,
      required this.zip,
      required this.city,
      required this.internet,
      required this.idCity,
      required this.telnospace,
      required this.lat,
      required this.lng,
      required this.category,
      required this.idCategory,
      required this.icon,
      required this.kmDiff,
      required this.civility,
      required this.tel,
      required this.idAgenda,
      required this.appointment,
      required this.isother})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, r'EtablissementAddDoctor', 'id');
    BuiltValueNullFieldError.checkNotNull(
        nom, r'EtablissementAddDoctor', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        address, r'EtablissementAddDoctor', 'address');
    BuiltValueNullFieldError.checkNotNull(
        zip, r'EtablissementAddDoctor', 'zip');
    BuiltValueNullFieldError.checkNotNull(
        city, r'EtablissementAddDoctor', 'city');
    BuiltValueNullFieldError.checkNotNull(
        internet, r'EtablissementAddDoctor', 'internet');
    BuiltValueNullFieldError.checkNotNull(
        idCity, r'EtablissementAddDoctor', 'idCity');
    BuiltValueNullFieldError.checkNotNull(
        telnospace, r'EtablissementAddDoctor', 'telnospace');
    BuiltValueNullFieldError.checkNotNull(
        lat, r'EtablissementAddDoctor', 'lat');
    BuiltValueNullFieldError.checkNotNull(
        lng, r'EtablissementAddDoctor', 'lng');
    BuiltValueNullFieldError.checkNotNull(
        category, r'EtablissementAddDoctor', 'category');
    BuiltValueNullFieldError.checkNotNull(
        idCategory, r'EtablissementAddDoctor', 'idCategory');
    BuiltValueNullFieldError.checkNotNull(
        icon, r'EtablissementAddDoctor', 'icon');
    BuiltValueNullFieldError.checkNotNull(
        kmDiff, r'EtablissementAddDoctor', 'kmDiff');
    BuiltValueNullFieldError.checkNotNull(
        civility, r'EtablissementAddDoctor', 'civility');
    BuiltValueNullFieldError.checkNotNull(
        tel, r'EtablissementAddDoctor', 'tel');
    BuiltValueNullFieldError.checkNotNull(
        idAgenda, r'EtablissementAddDoctor', 'idAgenda');
    BuiltValueNullFieldError.checkNotNull(
        appointment, r'EtablissementAddDoctor', 'appointment');
    BuiltValueNullFieldError.checkNotNull(
        isother, r'EtablissementAddDoctor', 'isother');
  }

  @override
  EtablissementAddDoctor rebuild(
          void Function(EtablissementAddDoctorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EtablissementAddDoctorBuilder toBuilder() =>
      new EtablissementAddDoctorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EtablissementAddDoctor &&
        id == other.id &&
        nom == other.nom &&
        address == other.address &&
        zip == other.zip &&
        city == other.city &&
        internet == other.internet &&
        idCity == other.idCity &&
        telnospace == other.telnospace &&
        lat == other.lat &&
        lng == other.lng &&
        category == other.category &&
        idCategory == other.idCategory &&
        icon == other.icon &&
        kmDiff == other.kmDiff &&
        civility == other.civility &&
        tel == other.tel &&
        idAgenda == other.idAgenda &&
        appointment == other.appointment &&
        isother == other.isother;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, address.hashCode);
    _$hash = $jc(_$hash, zip.hashCode);
    _$hash = $jc(_$hash, city.hashCode);
    _$hash = $jc(_$hash, internet.hashCode);
    _$hash = $jc(_$hash, idCity.hashCode);
    _$hash = $jc(_$hash, telnospace.hashCode);
    _$hash = $jc(_$hash, lat.hashCode);
    _$hash = $jc(_$hash, lng.hashCode);
    _$hash = $jc(_$hash, category.hashCode);
    _$hash = $jc(_$hash, idCategory.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, kmDiff.hashCode);
    _$hash = $jc(_$hash, civility.hashCode);
    _$hash = $jc(_$hash, tel.hashCode);
    _$hash = $jc(_$hash, idAgenda.hashCode);
    _$hash = $jc(_$hash, appointment.hashCode);
    _$hash = $jc(_$hash, isother.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EtablissementAddDoctor')
          ..add('id', id)
          ..add('nom', nom)
          ..add('address', address)
          ..add('zip', zip)
          ..add('city', city)
          ..add('internet', internet)
          ..add('idCity', idCity)
          ..add('telnospace', telnospace)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('category', category)
          ..add('idCategory', idCategory)
          ..add('icon', icon)
          ..add('kmDiff', kmDiff)
          ..add('civility', civility)
          ..add('tel', tel)
          ..add('idAgenda', idAgenda)
          ..add('appointment', appointment)
          ..add('isother', isother))
        .toString();
  }
}

class EtablissementAddDoctorBuilder
    implements Builder<EtablissementAddDoctor, EtablissementAddDoctorBuilder> {
  _$EtablissementAddDoctor? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _nom;
  String? get nom => _$this._nom;
  set nom(String? nom) => _$this._nom = nom;

  String? _address;
  String? get address => _$this._address;
  set address(String? address) => _$this._address = address;

  String? _zip;
  String? get zip => _$this._zip;
  set zip(String? zip) => _$this._zip = zip;

  String? _city;
  String? get city => _$this._city;
  set city(String? city) => _$this._city = city;

  int? _internet;
  int? get internet => _$this._internet;
  set internet(int? internet) => _$this._internet = internet;

  String? _idCity;
  String? get idCity => _$this._idCity;
  set idCity(String? idCity) => _$this._idCity = idCity;

  String? _telnospace;
  String? get telnospace => _$this._telnospace;
  set telnospace(String? telnospace) => _$this._telnospace = telnospace;

  String? _lat;
  String? get lat => _$this._lat;
  set lat(String? lat) => _$this._lat = lat;

  String? _lng;
  String? get lng => _$this._lng;
  set lng(String? lng) => _$this._lng = lng;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  String? _idCategory;
  String? get idCategory => _$this._idCategory;
  set idCategory(String? idCategory) => _$this._idCategory = idCategory;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _kmDiff;
  String? get kmDiff => _$this._kmDiff;
  set kmDiff(String? kmDiff) => _$this._kmDiff = kmDiff;

  String? _civility;
  String? get civility => _$this._civility;
  set civility(String? civility) => _$this._civility = civility;

  String? _tel;
  String? get tel => _$this._tel;
  set tel(String? tel) => _$this._tel = tel;

  String? _idAgenda;
  String? get idAgenda => _$this._idAgenda;
  set idAgenda(String? idAgenda) => _$this._idAgenda = idAgenda;

  AppointmentAddDoctorBuilder? _appointment;
  AppointmentAddDoctorBuilder get appointment =>
      _$this._appointment ??= new AppointmentAddDoctorBuilder();
  set appointment(AppointmentAddDoctorBuilder? appointment) =>
      _$this._appointment = appointment;

  int? _isother;
  int? get isother => _$this._isother;
  set isother(int? isother) => _$this._isother = isother;

  EtablissementAddDoctorBuilder();

  EtablissementAddDoctorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _nom = $v.nom;
      _address = $v.address;
      _zip = $v.zip;
      _city = $v.city;
      _internet = $v.internet;
      _idCity = $v.idCity;
      _telnospace = $v.telnospace;
      _lat = $v.lat;
      _lng = $v.lng;
      _category = $v.category;
      _idCategory = $v.idCategory;
      _icon = $v.icon;
      _kmDiff = $v.kmDiff;
      _civility = $v.civility;
      _tel = $v.tel;
      _idAgenda = $v.idAgenda;
      _appointment = $v.appointment.toBuilder();
      _isother = $v.isother;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EtablissementAddDoctor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EtablissementAddDoctor;
  }

  @override
  void update(void Function(EtablissementAddDoctorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EtablissementAddDoctor build() => _build();

  _$EtablissementAddDoctor _build() {
    _$EtablissementAddDoctor _$result;
    try {
      _$result = _$v ??
          new _$EtablissementAddDoctor._(
              id: BuiltValueNullFieldError.checkNotNull(
                  id, r'EtablissementAddDoctor', 'id'),
              nom: BuiltValueNullFieldError.checkNotNull(
                  nom, r'EtablissementAddDoctor', 'nom'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, r'EtablissementAddDoctor', 'address'),
              zip: BuiltValueNullFieldError.checkNotNull(
                  zip, r'EtablissementAddDoctor', 'zip'),
              city: BuiltValueNullFieldError.checkNotNull(
                  city, r'EtablissementAddDoctor', 'city'),
              internet: BuiltValueNullFieldError.checkNotNull(
                  internet, r'EtablissementAddDoctor', 'internet'),
              idCity: BuiltValueNullFieldError.checkNotNull(
                  idCity, r'EtablissementAddDoctor', 'idCity'),
              telnospace: BuiltValueNullFieldError.checkNotNull(
                  telnospace, r'EtablissementAddDoctor', 'telnospace'),
              lat:
                  BuiltValueNullFieldError.checkNotNull(lat, r'EtablissementAddDoctor', 'lat'),
              lng: BuiltValueNullFieldError.checkNotNull(lng, r'EtablissementAddDoctor', 'lng'),
              category: BuiltValueNullFieldError.checkNotNull(category, r'EtablissementAddDoctor', 'category'),
              idCategory: BuiltValueNullFieldError.checkNotNull(idCategory, r'EtablissementAddDoctor', 'idCategory'),
              icon: BuiltValueNullFieldError.checkNotNull(icon, r'EtablissementAddDoctor', 'icon'),
              kmDiff: BuiltValueNullFieldError.checkNotNull(kmDiff, r'EtablissementAddDoctor', 'kmDiff'),
              civility: BuiltValueNullFieldError.checkNotNull(civility, r'EtablissementAddDoctor', 'civility'),
              tel: BuiltValueNullFieldError.checkNotNull(tel, r'EtablissementAddDoctor', 'tel'),
              idAgenda: BuiltValueNullFieldError.checkNotNull(idAgenda, r'EtablissementAddDoctor', 'idAgenda'),
              appointment: appointment.build(),
              isother: BuiltValueNullFieldError.checkNotNull(isother, r'EtablissementAddDoctor', 'isother'));
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'appointment';
        appointment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'EtablissementAddDoctor', _$failedField, e.toString())!;
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppointmentAddDoctor extends AppointmentAddDoctor {
  @override
  final String token;

  factory _$AppointmentAddDoctor(
          [void Function(AppointmentAddDoctorBuilder)? updates]) =>
      (new AppointmentAddDoctorBuilder()..update(updates))._build();

  _$AppointmentAddDoctor._({required this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, r'AppointmentAddDoctor', 'token');
  }

  @override
  AppointmentAddDoctor rebuild(
          void Function(AppointmentAddDoctorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentAddDoctorBuilder toBuilder() =>
      new AppointmentAddDoctorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentAddDoctor && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'AppointmentAddDoctor')
          ..add('token', token))
        .toString();
  }
}

class AppointmentAddDoctorBuilder
    implements Builder<AppointmentAddDoctor, AppointmentAddDoctorBuilder> {
  _$AppointmentAddDoctor? _$v;

  String? _token;
  String? get token => _$this._token;
  set token(String? token) => _$this._token = token;

  AppointmentAddDoctorBuilder();

  AppointmentAddDoctorBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentAddDoctor other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentAddDoctor;
  }

  @override
  void update(void Function(AppointmentAddDoctorBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  AppointmentAddDoctor build() => _build();

  _$AppointmentAddDoctor _build() {
    final _$result = _$v ??
        new _$AppointmentAddDoctor._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, r'AppointmentAddDoctor', 'token'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
