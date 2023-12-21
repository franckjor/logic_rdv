// GENERATED CODE - DO NOT MODIFY BY HAND

part of remove_patient_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RemovePatientRequest> _$removePatientRequestSerializer =
    new _$RemovePatientRequestSerializer();

class _$RemovePatientRequestSerializer
    implements StructuredSerializer<RemovePatientRequest> {
  @override
  final Iterable<Type> types = const [
    RemovePatientRequest,
    _$RemovePatientRequest
  ];
  @override
  final String wireName = 'RemovePatientRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RemovePatientRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String))!,
      'tokenappt',
      serializers.serialize(object.tokenappt,
          specifiedType: const FullType(String))!,
      'tokenpatient',
      serializers.serialize(object.tokenpatient,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  RemovePatientRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RemovePatientRequestBuilder();

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
        case 'tokenappt':
          result.tokenappt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tokenpatient':
          result.tokenpatient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RemovePatientRequest extends RemovePatientRequest {
  @override
  final String tokenuser;
  @override
  final String tokenappt;
  @override
  final String tokenpatient;

  factory _$RemovePatientRequest(
          [void Function(RemovePatientRequestBuilder)? updates]) =>
      (new RemovePatientRequestBuilder()..update(updates!)).build();

  _$RemovePatientRequest._({required this.tokenuser,required this.tokenappt,required this.tokenpatient})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'RemovePatientRequest', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        tokenappt, 'RemovePatientRequest', 'tokenappt');
    BuiltValueNullFieldError.checkNotNull(
        tokenpatient, 'RemovePatientRequest', 'tokenpatient');
  }

  @override
  RemovePatientRequest rebuild(
          void Function(RemovePatientRequestBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  RemovePatientRequestBuilder toBuilder() =>
      new RemovePatientRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RemovePatientRequest &&
        tokenuser == other.tokenuser &&
        tokenappt == other.tokenappt &&
        tokenpatient == other.tokenpatient;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, tokenuser.hashCode), tokenappt.hashCode),
        tokenpatient.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RemovePatientRequest')
          ..add('tokenuser', tokenuser)
          ..add('tokenappt', tokenappt)
          ..add('tokenpatient', tokenpatient))
        .toString();
  }
}

class RemovePatientRequestBuilder
    implements Builder<RemovePatientRequest, RemovePatientRequestBuilder> {
  _$RemovePatientRequest? _$v =_$RemovePatientRequest();

  String _tokenuser = '';
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _tokenappt = '';
  String get tokenappt => _$this._tokenappt;
  set tokenappt(String tokenappt) => _$this._tokenappt = tokenappt;

  String _tokenpatient = '';
  String get tokenpatient => _$this._tokenpatient;
  set tokenpatient(String tokenpatient) => _$this._tokenpatient = tokenpatient;

  RemovePatientRequestBuilder();

  RemovePatientRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _tokenappt = $v.tokenappt;
      _tokenpatient = $v.tokenpatient;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RemovePatientRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RemovePatientRequest;
  }

  @override
  void update(void Function(RemovePatientRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RemovePatientRequest build() {
    final _$result = _$v ??
        new _$RemovePatientRequest._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'RemovePatientRequest', 'tokenuser'),
            tokenappt: BuiltValueNullFieldError.checkNotNull(
                tokenappt, 'RemovePatientRequest', 'tokenappt'),
            tokenpatient: BuiltValueNullFieldError.checkNotNull(
                tokenpatient, 'RemovePatientRequest', 'tokenpatient'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
