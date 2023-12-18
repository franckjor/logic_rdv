// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_patient_response;

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
  Iterable<Object> serialize(
      Serializers serializers, CreatePatientResponse object,
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
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatePatientResponseBuilder();

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
                  specifiedType: const FullType(ParamsCreatePatientResponse))
              as ParamsCreatePatientResponse);
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
  Iterable<Object> serialize(
      Serializers serializers, ParamsCreatePatientResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsCreatePatientResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code':
          result.code = serializers.deserialize(value,
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
        case 'mobile':
          result.mobile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pass1':
          result.pass1 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pass2':
          result.pass2 = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cgu':
          result.cgu = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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
          [void Function(CreatePatientResponseBuilder) updates]) =>
      (new CreatePatientResponseBuilder()..update(updates)).build();

  _$CreatePatientResponse._(
      {this.version,
      this.request,
      this.params,
      this.message,
      this.httpstatut,
      this.error})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        version, 'CreatePatientResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'CreatePatientResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'CreatePatientResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        message, 'CreatePatientResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'CreatePatientResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        error, 'CreatePatientResponse', 'error');
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
    return (newBuiltValueToStringHelper('CreatePatientResponse')
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
  _$CreatePatientResponse _$v;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request;
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsCreatePatientResponseBuilder _params;
  ParamsCreatePatientResponseBuilder get params =>
      _$this._params ??= new ParamsCreatePatientResponseBuilder();
  set params(ParamsCreatePatientResponseBuilder params) =>
      _$this._params = params;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _httpstatut;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

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
  void update(void Function(CreatePatientResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatePatientResponse build() {
    _$CreatePatientResponse _$result;
    try {
      _$result = _$v ??
          new _$CreatePatientResponse._(
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'CreatePatientResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'CreatePatientResponse', 'request'),
              params: params.build(),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'CreatePatientResponse', 'message'),
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'CreatePatientResponse', 'httpstatut'),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'CreatePatientResponse', 'error'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'params';
        params.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CreatePatientResponse', _$failedField, e.toString());
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
          [void Function(ParamsCreatePatientResponseBuilder) updates]) =>
      (new ParamsCreatePatientResponseBuilder()..update(updates)).build();

  _$ParamsCreatePatientResponse._(
      {this.phone,
      this.id,
      this.code,
      this.nom,
      this.prenom,
      this.mobile,
      this.email,
      this.pass1,
      this.pass2,
      this.cgu})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phone, 'ParamsCreatePatientResponse', 'phone');
    BuiltValueNullFieldError.checkNotNull(
        id, 'ParamsCreatePatientResponse', 'id');
    BuiltValueNullFieldError.checkNotNull(
        code, 'ParamsCreatePatientResponse', 'code');
    BuiltValueNullFieldError.checkNotNull(
        nom, 'ParamsCreatePatientResponse', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        prenom, 'ParamsCreatePatientResponse', 'prenom');
    BuiltValueNullFieldError.checkNotNull(
        mobile, 'ParamsCreatePatientResponse', 'mobile');
    BuiltValueNullFieldError.checkNotNull(
        email, 'ParamsCreatePatientResponse', 'email');
    BuiltValueNullFieldError.checkNotNull(
        pass1, 'ParamsCreatePatientResponse', 'pass1');
    BuiltValueNullFieldError.checkNotNull(
        pass2, 'ParamsCreatePatientResponse', 'pass2');
    BuiltValueNullFieldError.checkNotNull(
        cgu, 'ParamsCreatePatientResponse', 'cgu');
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
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc($jc($jc(0, phone.hashCode), id.hashCode),
                                    code.hashCode),
                                nom.hashCode),
                            prenom.hashCode),
                        mobile.hashCode),
                    email.hashCode),
                pass1.hashCode),
            pass2.hashCode),
        cgu.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsCreatePatientResponse')
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
  _$ParamsCreatePatientResponse _$v;

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  String _prenom;
  String get prenom => _$this._prenom;
  set prenom(String prenom) => _$this._prenom = prenom;

  String _mobile;
  String get mobile => _$this._mobile;
  set mobile(String mobile) => _$this._mobile = mobile;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _pass1;
  String get pass1 => _$this._pass1;
  set pass1(String pass1) => _$this._pass1 = pass1;

  String _pass2;
  String get pass2 => _$this._pass2;
  set pass2(String pass2) => _$this._pass2 = pass2;

  String _cgu;
  String get cgu => _$this._cgu;
  set cgu(String cgu) => _$this._cgu = cgu;

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
  void update(void Function(ParamsCreatePatientResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsCreatePatientResponse build() {
    final _$result = _$v ??
        new _$ParamsCreatePatientResponse._(
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'ParamsCreatePatientResponse', 'phone'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'ParamsCreatePatientResponse', 'id'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'ParamsCreatePatientResponse', 'code'),
            nom: BuiltValueNullFieldError.checkNotNull(
                nom, 'ParamsCreatePatientResponse', 'nom'),
            prenom: BuiltValueNullFieldError.checkNotNull(
                prenom, 'ParamsCreatePatientResponse', 'prenom'),
            mobile: BuiltValueNullFieldError.checkNotNull(
                mobile, 'ParamsCreatePatientResponse', 'mobile'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'ParamsCreatePatientResponse', 'email'),
            pass1: BuiltValueNullFieldError.checkNotNull(
                pass1, 'ParamsCreatePatientResponse', 'pass1'),
            pass2:
                BuiltValueNullFieldError.checkNotNull(pass2, 'ParamsCreatePatientResponse', 'pass2'),
            cgu: BuiltValueNullFieldError.checkNotNull(cgu, 'ParamsCreatePatientResponse', 'cgu'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
