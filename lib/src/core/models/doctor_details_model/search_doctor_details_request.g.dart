// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search_doctor_details_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchDoctorDetailsRequest> _$searchDoctorDetailsRequestSerializer =
    new _$SearchDoctorDetailsRequestSerializer();

class _$SearchDoctorDetailsRequestSerializer
    implements StructuredSerializer<SearchDoctorDetailsRequest> {
  @override
  final Iterable<Type> types = const [
    SearchDoctorDetailsRequest,
    _$SearchDoctorDetailsRequest
  ];
  @override
  final String wireName = 'SearchDoctorDetailsRequest';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, SearchDoctorDetailsRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SearchDoctorDetailsRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchDoctorDetailsRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String))! as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchDoctorDetailsRequest extends SearchDoctorDetailsRequest {
  @override
  final String id;

  factory _$SearchDoctorDetailsRequest(
          [void Function(SearchDoctorDetailsRequestBuilder)? updates]) =>
      (new SearchDoctorDetailsRequestBuilder()..update(updates))._build();

  _$SearchDoctorDetailsRequest._({required this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        id, r'SearchDoctorDetailsRequest', 'id');
  }

  @override
  SearchDoctorDetailsRequest rebuild(
          void Function(SearchDoctorDetailsRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchDoctorDetailsRequestBuilder toBuilder() =>
      new SearchDoctorDetailsRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchDoctorDetailsRequest && id == other.id;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SearchDoctorDetailsRequest')
          ..add('id', id))
        .toString();
  }
}

class SearchDoctorDetailsRequestBuilder
    implements
        Builder<SearchDoctorDetailsRequest, SearchDoctorDetailsRequestBuilder> {
  _$SearchDoctorDetailsRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  SearchDoctorDetailsRequestBuilder();

  SearchDoctorDetailsRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchDoctorDetailsRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchDoctorDetailsRequest;
  }

  @override
  void update(void Function(SearchDoctorDetailsRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SearchDoctorDetailsRequest build() => _build();

  _$SearchDoctorDetailsRequest _build() {
    final _$result = _$v ??
        new _$SearchDoctorDetailsRequest._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'SearchDoctorDetailsRequest', 'id'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
