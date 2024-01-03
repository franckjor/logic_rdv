// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'patient_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PatientRequest> _$patientRequestSerializer =
    new _$PatientRequestSerializer();

class _$PatientRequestSerializer
    implements StructuredSerializer<PatientRequest> {
  @override
  final Iterable<Type> types = const [PatientRequest, _$PatientRequest];
  @override
  final String wireName = 'PatientRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, PatientRequest object,
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
    value = object.tokenpatient;
    if (value != null) {
      result
        ..add('tokenpatient')
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
  PatientRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PatientRequestBuilder();

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
        case 'tokenpatient':
          result.tokenpatient = serializers.deserialize(value,
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

class _$PatientRequest extends PatientRequest {
  @override
  final String? tokenuser;
  @override
  final String? tokenappt;
  @override
  final String? tokenpatient;
  @override
  final String? nom;
  @override
  final String? prenom;
  @override
  final String? email;
  @override
  final String? phone;

  factory _$PatientRequest([void Function(PatientRequestBuilder)? updates]) =>
      (new PatientRequestBuilder()..update(updates))._build();

  _$PatientRequest._(
      {this.tokenuser,
      this.tokenappt,
      this.tokenpatient,
      this.nom,
      this.prenom,
      this.email,
      this.phone})
      : super._();

  @override
  PatientRequest rebuild(void Function(PatientRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PatientRequestBuilder toBuilder() =>
      new PatientRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PatientRequest &&
        tokenuser == other.tokenuser &&
        tokenappt == other.tokenappt &&
        tokenpatient == other.tokenpatient &&
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
    _$hash = $jc(_$hash, tokenpatient.hashCode);
    _$hash = $jc(_$hash, nom.hashCode);
    _$hash = $jc(_$hash, prenom.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, phone.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PatientRequest')
          ..add('tokenuser', tokenuser)
          ..add('tokenappt', tokenappt)
          ..add('tokenpatient', tokenpatient)
          ..add('nom', nom)
          ..add('prenom', prenom)
          ..add('email', email)
          ..add('phone', phone))
        .toString();
  }
}

class PatientRequestBuilder
    implements Builder<PatientRequest, PatientRequestBuilder> {
  _$PatientRequest? _$v;

  String? _tokenuser;
  String? get tokenuser => _$this._tokenuser;
  set tokenuser(String? tokenuser) => _$this._tokenuser = tokenuser;

  String? _tokenappt;
  String? get tokenappt => _$this._tokenappt;
  set tokenappt(String? tokenappt) => _$this._tokenappt = tokenappt;

  String? _tokenpatient;
  String? get tokenpatient => _$this._tokenpatient;
  set tokenpatient(String? tokenpatient) => _$this._tokenpatient = tokenpatient;

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

  PatientRequestBuilder();

  PatientRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _tokenappt = $v.tokenappt;
      _tokenpatient = $v.tokenpatient;
      _nom = $v.nom;
      _prenom = $v.prenom;
      _email = $v.email;
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PatientRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PatientRequest;
  }

  @override
  void update(void Function(PatientRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PatientRequest build() => _build();

  _$PatientRequest _build() {
    final _$result = _$v ??
        new _$PatientRequest._(
            tokenuser: tokenuser,
            tokenappt: tokenappt,
            tokenpatient: tokenpatient,
            nom: nom,
            prenom: prenom,
            email: email,
            phone: phone);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
