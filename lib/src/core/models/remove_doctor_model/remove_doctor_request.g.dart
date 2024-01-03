// GENERATED CODE - DO NOT MODIFY BY HAND

part of remove_doctor_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RemoveDoctorRequest> _$removeDoctorRequestSerializer =
    new _$RemoveDoctorRequestSerializer();

class _$RemoveDoctorRequestSerializer
    implements StructuredSerializer<RemoveDoctorRequest> {
  @override
  final Iterable<Type> types = const [
    RemoveDoctorRequest,
    _$RemoveDoctorRequest
  ];
  @override
  final String wireName = 'RemoveDoctorRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RemoveDoctorRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenUser,
          specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  RemoveDoctorRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RemoveDoctorRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'tokenuser':
          result.tokenUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RemoveDoctorRequest extends RemoveDoctorRequest {
  @override
  final String tokenUser;
  @override
  final String id;

  factory _$RemoveDoctorRequest(
          [void Function(RemoveDoctorRequestBuilder) updates]) =>
      (new RemoveDoctorRequestBuilder()..update(updates)).build();

  _$RemoveDoctorRequest._({this.tokenUser, this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenUser, 'RemoveDoctorRequest', 'tokenUser');
    BuiltValueNullFieldError.checkNotNull(id, 'RemoveDoctorRequest', 'id');
  }

  @override
  RemoveDoctorRequest rebuild(
          void Function(RemoveDoctorRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RemoveDoctorRequestBuilder toBuilder() =>
      new RemoveDoctorRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemoveDoctorRequest &&
        tokenUser == other.tokenUser &&
        id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tokenUser.hashCode), id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemoveDoctorRequest')
          ..add('tokenUser', tokenUser)
          ..add('id', id))
        .toString();
  }
}

class RemoveDoctorRequestBuilder
    implements Builder<RemoveDoctorRequest, RemoveDoctorRequestBuilder> {
  _$RemoveDoctorRequest _$v;

  String _tokenUser;
  String get tokenUser => _$this._tokenUser;
  set tokenUser(String tokenUser) => _$this._tokenUser = tokenUser;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  RemoveDoctorRequestBuilder();

  RemoveDoctorRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenUser = $v.tokenUser;
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemoveDoctorRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemoveDoctorRequest;
  }

  @override
  void update(void Function(RemoveDoctorRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemoveDoctorRequest build() {
    final _$result = _$v ??
        new _$RemoveDoctorRequest._(
            tokenUser: BuiltValueNullFieldError.checkNotNull(
                tokenUser, 'RemoveDoctorRequest', 'tokenUser'),
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'RemoveDoctorRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
