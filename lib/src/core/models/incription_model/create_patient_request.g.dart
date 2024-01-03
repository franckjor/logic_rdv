// GENERATED CODE - DO NOT MODIFY BY HAND

part of create_patient_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CreatePatientRequest> _$createPatientRequestSerializer =
    new _$CreatePatientRequestSerializer();

class _$CreatePatientRequestSerializer
    implements StructuredSerializer<CreatePatientRequest> {
  @override
  final Iterable<Type> types = const [
    CreatePatientRequest,
    _$CreatePatientRequest
  ];
  @override
  final String wireName = 'CreatePatientRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CreatePatientRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
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
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  CreatePatientRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CreatePatientRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
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
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CreatePatientRequest extends CreatePatientRequest {
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
  @override
  final String phone;

  factory _$CreatePatientRequest(
          [void Function(CreatePatientRequestBuilder) updates]) =>
      (new CreatePatientRequestBuilder()..update(updates)).build();

  _$CreatePatientRequest._(
      {this.id,
      this.code,
      this.nom,
      this.prenom,
      this.mobile,
      this.email,
      this.pass1,
      this.pass2,
      this.cgu,
      this.phone})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'CreatePatientRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(code, 'CreatePatientRequest', 'code');
    BuiltValueNullFieldError.checkNotNull(nom, 'CreatePatientRequest', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        prenom, 'CreatePatientRequest', 'prenom');
    BuiltValueNullFieldError.checkNotNull(
        mobile, 'CreatePatientRequest', 'mobile');
    BuiltValueNullFieldError.checkNotNull(
        email, 'CreatePatientRequest', 'email');
    BuiltValueNullFieldError.checkNotNull(
        pass1, 'CreatePatientRequest', 'pass1');
    BuiltValueNullFieldError.checkNotNull(
        pass2, 'CreatePatientRequest', 'pass2');
    BuiltValueNullFieldError.checkNotNull(cgu, 'CreatePatientRequest', 'cgu');
    BuiltValueNullFieldError.checkNotNull(
        phone, 'CreatePatientRequest', 'phone');
  }

  @override
  CreatePatientRequest rebuild(
          void Function(CreatePatientRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CreatePatientRequestBuilder toBuilder() =>
      new CreatePatientRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CreatePatientRequest &&
        id == other.id &&
        code == other.code &&
        nom == other.nom &&
        prenom == other.prenom &&
        mobile == other.mobile &&
        email == other.email &&
        pass1 == other.pass1 &&
        pass2 == other.pass2 &&
        cgu == other.cgu &&
        phone == other.phone;
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
                                $jc($jc($jc(0, id.hashCode), code.hashCode),
                                    nom.hashCode),
                                prenom.hashCode),
                            mobile.hashCode),
                        email.hashCode),
                    pass1.hashCode),
                pass2.hashCode),
            cgu.hashCode),
        phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CreatePatientRequest')
          ..add('id', id)
          ..add('code', code)
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('mobile', mobile)
          ..add('email', email)
          ..add('pass1', pass1)
          ..add('pass2', pass2)
          ..add('cgu', cgu)
          ..add('phone', phone))
        .toString();
  }
}

class CreatePatientRequestBuilder
    implements Builder<CreatePatientRequest, CreatePatientRequestBuilder> {
  _$CreatePatientRequest _$v;

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

  String _phone;
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  CreatePatientRequestBuilder();

  CreatePatientRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _code = $v.code;
      _nom = $v.nom;
      _prenom = $v.prenom;
      _mobile = $v.mobile;
      _email = $v.email;
      _pass1 = $v.pass1;
      _pass2 = $v.pass2;
      _cgu = $v.cgu;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CreatePatientRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$CreatePatientRequest;
  }

  @override
  void update(void Function(CreatePatientRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CreatePatientRequest build() {
    final _$result = _$v ??
        new _$CreatePatientRequest._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'CreatePatientRequest', 'id'),
            code: BuiltValueNullFieldError.checkNotNull(
                code, 'CreatePatientRequest', 'code'),
            nom: BuiltValueNullFieldError.checkNotNull(
                nom, 'CreatePatientRequest', 'nom'),
            prenom: BuiltValueNullFieldError.checkNotNull(
                prenom, 'CreatePatientRequest', 'prenom'),
            mobile: BuiltValueNullFieldError.checkNotNull(
                mobile, 'CreatePatientRequest', 'mobile'),
            email: BuiltValueNullFieldError.checkNotNull(
                email, 'CreatePatientRequest', 'email'),
            pass1: BuiltValueNullFieldError.checkNotNull(
                pass1, 'CreatePatientRequest', 'pass1'),
            pass2: BuiltValueNullFieldError.checkNotNull(
                pass2, 'CreatePatientRequest', 'pass2'),
            cgu: BuiltValueNullFieldError.checkNotNull(
                cgu, 'CreatePatientRequest', 'cgu'),
            phone: BuiltValueNullFieldError.checkNotNull(phone, 'CreatePatientRequest', 'phone'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
