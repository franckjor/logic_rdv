// GENERATED CODE - DO NOT MODIFY BY HAND

part of inscription_check_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InscriptionCheckRequest> _$inscriptionCheckRequestSerializer =
    new _$InscriptionCheckRequestSerializer();

class _$InscriptionCheckRequestSerializer
    implements StructuredSerializer<InscriptionCheckRequest> {
  @override
  final Iterable<Type> types = const [
    InscriptionCheckRequest,
    _$InscriptionCheckRequest
  ];
  @override
  final String wireName = 'InscriptionCheckRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InscriptionCheckRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'phone',
      serializers.serialize(object.phone,
          specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  InscriptionCheckRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InscriptionCheckRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'phone':
          result.phone = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InscriptionCheckRequest extends InscriptionCheckRequest {
  @override
  final String phone;

  factory _$InscriptionCheckRequest(
          [void Function(InscriptionCheckRequestBuilder)? updates]) =>
      (new InscriptionCheckRequestBuilder()..update(updates!)).build();

  _$InscriptionCheckRequest._({required this.phone}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        phone, 'InscriptionCheckRequest', 'phone');
  }

  @override
  InscriptionCheckRequest rebuild(
          void Function(InscriptionCheckRequestBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  InscriptionCheckRequestBuilder toBuilder() =>
      new InscriptionCheckRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InscriptionCheckRequest && phone == other.phone;
  }

  @override
  int get hashCode {
    return $jf($jc(0, phone.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InscriptionCheckRequest')
          ..add('phone', phone))
        .toString();
  }
}

class InscriptionCheckRequestBuilder
    implements
        Builder<InscriptionCheckRequest, InscriptionCheckRequestBuilder> {
  _$InscriptionCheckRequest? _$v;

  String _phone = '';
  String get phone => _$this._phone;
  set phone(String phone) => _$this._phone = phone;

  InscriptionCheckRequestBuilder();

  InscriptionCheckRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _phone = $v.phone;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InscriptionCheckRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$InscriptionCheckRequest;
  }

  @override
  void update(void Function(InscriptionCheckRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InscriptionCheckRequest build() {
    final _$result = _$v ??
        new _$InscriptionCheckRequest._(
            phone: BuiltValueNullFieldError.checkNotNull(
                phone, 'InscriptionCheckRequest', 'phone'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
