// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UserRequest> _$userRequestSerializer = new _$UserRequestSerializer();

class _$UserRequestSerializer implements StructuredSerializer<UserRequest> {
  @override
  final Iterable<Type> types = const [UserRequest, _$UserRequest];
  @override
  final String wireName = 'UserRequest';

  @override
  Iterable<Object?> serialize(Serializers serializers, UserRequest object,
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
  UserRequest deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UserRequestBuilder();

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

class _$UserRequest extends UserRequest {
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

  factory _$UserRequest([void Function(UserRequestBuilder)? updates]) =>
      (new UserRequestBuilder()..update(updates))._build();

  _$UserRequest._(
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
        tokenuser, r'UserRequest', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        compteNom, r'UserRequest', 'compteNom');
    BuiltValueNullFieldError.checkNotNull(
        comptePrenom, r'UserRequest', 'comptePrenom');
    BuiltValueNullFieldError.checkNotNull(
        compteEmail, r'UserRequest', 'compteEmail');
    BuiltValueNullFieldError.checkNotNull(
        compteMobile, r'UserRequest', 'compteMobile');
    BuiltValueNullFieldError.checkNotNull(
        compteAdresse, r'UserRequest', 'compteAdresse');
    BuiltValueNullFieldError.checkNotNull(
        compteCodepostal, r'UserRequest', 'compteCodepostal');
    BuiltValueNullFieldError.checkNotNull(
        compteVille, r'UserRequest', 'compteVille');
    BuiltValueNullFieldError.checkNotNull(
        comptePassword, r'UserRequest', 'comptePassword');
    BuiltValueNullFieldError.checkNotNull(
        comptePasswordConf, r'UserRequest', 'comptePasswordConf');
  }

  @override
  UserRequest rebuild(void Function(UserRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserRequestBuilder toBuilder() => new UserRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserRequest &&
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
    return (newBuiltValueToStringHelper(r'UserRequest')
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

class UserRequestBuilder implements Builder<UserRequest, UserRequestBuilder> {
  _$UserRequest? _$v;

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

  UserRequestBuilder();

  UserRequestBuilder get _$this {
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
  void replace(UserRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UserRequest;
  }

  @override
  void update(void Function(UserRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserRequest build() => _build();

  _$UserRequest _build() {
    final _$result = _$v ??
        new _$UserRequest._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, r'UserRequest', 'tokenuser'),
            compteNom: BuiltValueNullFieldError.checkNotNull(
                compteNom, r'UserRequest', 'compteNom'),
            comptePrenom: BuiltValueNullFieldError.checkNotNull(
                comptePrenom, r'UserRequest', 'comptePrenom'),
            compteEmail: BuiltValueNullFieldError.checkNotNull(
                compteEmail, r'UserRequest', 'compteEmail'),
            compteMobile: BuiltValueNullFieldError.checkNotNull(
                compteMobile, r'UserRequest', 'compteMobile'),
            compteAdresse: BuiltValueNullFieldError.checkNotNull(
                compteAdresse, r'UserRequest', 'compteAdresse'),
            compteCodepostal: BuiltValueNullFieldError.checkNotNull(
                compteCodepostal, r'UserRequest', 'compteCodepostal'),
            compteVille: BuiltValueNullFieldError.checkNotNull(
                compteVille, r'UserRequest', 'compteVille'),
            comptePassword: BuiltValueNullFieldError.checkNotNull(
                comptePassword, r'UserRequest', 'comptePassword'),
            comptePasswordConf: BuiltValueNullFieldError.checkNotNull(comptePasswordConf, r'UserRequest', 'comptePasswordConf'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
