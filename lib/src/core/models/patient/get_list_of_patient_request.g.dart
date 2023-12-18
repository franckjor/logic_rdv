// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_list_of_patient_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetListOfPatientRequest> _$getListOfPatientRequestSerializer =
    new _$GetListOfPatientRequestSerializer();

class _$GetListOfPatientRequestSerializer
    implements StructuredSerializer<GetListOfPatientRequest> {
  @override
  final Iterable<Type> types = const [
    GetListOfPatientRequest,
    _$GetListOfPatientRequest
  ];
  @override
  final String wireName = 'GetListOfPatientRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GetListOfPatientRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String)),
      'tokenappt',
      serializers.serialize(object.tokenappt,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  GetListOfPatientRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetListOfPatientRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'tokenuser':
          result.tokenuser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tokenappt':
          result.tokenappt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetListOfPatientRequest extends GetListOfPatientRequest {
  @override
  final String tokenuser;
  @override
  final String tokenappt;

  factory _$GetListOfPatientRequest(
          [void Function(GetListOfPatientRequestBuilder) updates]) =>
      (new GetListOfPatientRequestBuilder()..update(updates)).build();

  _$GetListOfPatientRequest._({this.tokenuser, this.tokenappt}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'GetListOfPatientRequest', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        tokenappt, 'GetListOfPatientRequest', 'tokenappt');
  }

  @override
  GetListOfPatientRequest rebuild(
          void Function(GetListOfPatientRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GetListOfPatientRequestBuilder toBuilder() =>
      new GetListOfPatientRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetListOfPatientRequest &&
        tokenuser == other.tokenuser &&
        tokenappt == other.tokenappt;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tokenuser.hashCode), tokenappt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetListOfPatientRequest')
          ..add('tokenuser', tokenuser)
          ..add('tokenappt', tokenappt))
        .toString();
  }
}

class GetListOfPatientRequestBuilder
    implements
        Builder<GetListOfPatientRequest, GetListOfPatientRequestBuilder> {
  _$GetListOfPatientRequest _$v;

  String _tokenuser;
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _tokenappt;
  String get tokenappt => _$this._tokenappt;
  set tokenappt(String tokenappt) => _$this._tokenappt = tokenappt;

  GetListOfPatientRequestBuilder();

  GetListOfPatientRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _tokenappt = $v.tokenappt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetListOfPatientRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetListOfPatientRequest;
  }

  @override
  void update(void Function(GetListOfPatientRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetListOfPatientRequest build() {
    final _$result = _$v ??
        new _$GetListOfPatientRequest._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'GetListOfPatientRequest', 'tokenuser'),
            tokenappt: BuiltValueNullFieldError.checkNotNull(
                tokenappt, 'GetListOfPatientRequest', 'tokenappt'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
