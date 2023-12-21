// GENERATED CODE - DO NOT MODIFY BY HAND

part of get_appointment_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GetAppointmentRequest> _$getAppointmentRequestSerializer =
    new _$GetAppointmentRequestSerializer();

class _$GetAppointmentRequestSerializer
    implements StructuredSerializer<GetAppointmentRequest> {
  @override
  final Iterable<Type> types = const [
    GetAppointmentRequest,
    _$GetAppointmentRequest
  ];
  @override
  final String wireName = 'GetAppointmentRequest';

  @override
  Iterable<Object> serialize(
      Serializers serializers, GetAppointmentRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'tokenuser',
      serializers.serialize(object.tokenuser,
          specifiedType: const FullType(String))!,
      'page',
      serializers.serialize(object.page, specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  GetAppointmentRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GetAppointmentRequestBuilder();

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
        case 'page':
          result.page = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GetAppointmentRequest extends GetAppointmentRequest {
  @override
  final String tokenuser;
  @override
  final String page;

  factory _$GetAppointmentRequest(
          [void Function(GetAppointmentRequestBuilder)? updates]) =>
      (new GetAppointmentRequestBuilder()..update(updates!)).build();

  _$GetAppointmentRequest._({required this.tokenuser,required this.page}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        tokenuser, 'GetAppointmentRequest', 'tokenuser');
    BuiltValueNullFieldError.checkNotNull(
        page, 'GetAppointmentRequest', 'page');
  }

  @override
  GetAppointmentRequest rebuild(
          void Function(GetAppointmentRequestBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  GetAppointmentRequestBuilder toBuilder() =>
      new GetAppointmentRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GetAppointmentRequest &&
        tokenuser == other.tokenuser &&
        page == other.page;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tokenuser.hashCode), page.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GetAppointmentRequest')
          ..add('tokenuser', tokenuser)
          ..add('page', page))
        .toString();
  }
}

class GetAppointmentRequestBuilder
    implements Builder<GetAppointmentRequest, GetAppointmentRequestBuilder> {
  _$GetAppointmentRequest? _$v;

  String _tokenuser = '';
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _page = '';
  String get page => _$this._page;
  set page(String page) => _$this._page = page;

  GetAppointmentRequestBuilder();

  GetAppointmentRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _page = $v.page;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GetAppointmentRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$GetAppointmentRequest;
  }

  @override
  void update(void Function(GetAppointmentRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GetAppointmentRequest build() {
    final _$result = _$v ??
        new _$GetAppointmentRequest._(
            tokenuser: BuiltValueNullFieldError.checkNotNull(
                tokenuser, 'GetAppointmentRequest', 'tokenuser'),
            page: BuiltValueNullFieldError.checkNotNull(
                page, 'GetAppointmentRequest', 'page'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
