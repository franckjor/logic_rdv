// GENERATED CODE - DO NOT MODIFY BY HAND

part of add_doctor_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AddDoctorRequest> _$addDoctorRequestSerializer =
    new _$AddDoctorRequestSerializer();

class _$AddDoctorRequestSerializer
    implements StructuredSerializer<AddDoctorRequest> {
  @override
  final Iterable<Type> types = const [AddDoctorRequest, _$AddDoctorRequest];
  @override
  final String wireName = 'AddDoctorRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, AddDoctorRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String))!,
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String))!,
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  AddDoctorRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AddDoctorRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
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

class _$AddDoctorRequest extends AddDoctorRequest {
  @override
  final String tokenuser;
  @override
  final String id;
  @override
  final String phone;

  factory _$AddDoctorRequest(
          [void Function(AddDoctorRequestBuilder)? updates]) =>
      (new AddDoctorRequestBuilder()..update(updates!)).build();

  _$AddDoctorRequest._({required this.tokenuser,required this.id,required  this.phone}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'AddDoctorRequest', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(id, 'AddDoctorRequest', 'id');
    BuiltValueNullFieldError.checkNotNull(phone, 'AddDoctorRequest', 'phone');
  }

  @override
  AddDoctorRequest rebuild(void Function(AddDoctorRequestBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  AddDoctorRequestBuilder toBuilder() =>
      new AddDoctorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AddDoctorRequest &&
        tokenuser == other.tokenuser &&
        id == other.id &&
        phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, tokenuser.hashCode), id.hashCode), phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AddDoctorRequest')
          ..add('tokenuser', tokenuser)
          ..add('id', id)
          ..add('phone', phone))
        .toString();
  }
}

class AddDoctorRequestBuilder
    implements Builder<AddDoctorRequest, AddDoctorRequestBuilder> {
  _$AddDoctorRequest? _$v;

  String _tokenuser = '';
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _id = '';
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _phone = '';
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  AddDoctorRequestBuilder();

  AddDoctorRequestBuilder get _$this {
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
  void replace(AddDoctorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AddDoctorRequest;
  }

  @override
  void update(void Function(AddDoctorRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AddDoctorRequest build() {
    final _$result = _$v ??
        new _$AddDoctorRequest._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'AddDoctorRequest', 'tokenuser'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'AddDoctorRequest', 'id'),
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'AddDoctorRequest', 'phone'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
