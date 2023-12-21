// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_city_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchCityRequest> _$searchCityRequestSerializer =
    new _$SearchCityRequestSerializer();

class _$SearchCityRequestSerializer
    implements StructuredSerializer<SearchCityRequest> {
  @override
  final Iterable<Type> types = const [SearchCityRequest, _$SearchCityRequest];
  @override
  final String wireName = 'SearchCityRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchCityRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String))!,
      'proxy_istelecons',
      serializers.serialize(object.proxyIstelecons,
          specifiedType: const FullType(String))!,
      'term',
      serializers.serialize(object.term, specifiedType: const FullType(String))!,
    ];

    return result;
  }

  @override
  SearchCityRequest deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchCityRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'proxy_istelecons':
          result.proxyIstelecons = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'term':
          result.term = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchCityRequest extends SearchCityRequest {
  @override
  final String kind;
  @override
  final String proxyIstelecons;
  @override
  final String term;

  factory _$SearchCityRequest(
          [void Function(SearchCityRequestBuilder)? updates]) =>
      (new SearchCityRequestBuilder()..update(updates!)).build();

  _$SearchCityRequest._({required this.kind,required this.proxyIstelecons,required  this.term})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(kind, 'SearchCityRequest', 'kind');
    BuiltValueNullFieldError.checkNotNull(
        proxyIstelecons, 'SearchCityRequest', 'proxyIstelecons');
    BuiltValueNullFieldError.checkNotNull(term, 'SearchCityRequest', 'term');
  }

  @override
  SearchCityRequest rebuild(void Function(SearchCityRequestBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  SearchCityRequestBuilder toBuilder() =>
      new SearchCityRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchCityRequest &&
        kind == other.kind &&
        proxyIstelecons == other.proxyIstelecons &&
        term == other.term;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, kind.hashCode), proxyIstelecons.hashCode), term.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchCityRequest')
          ..add('kind', kind)
          ..add('proxyIstelecons', proxyIstelecons)
          ..add('term', term))
        .toString();
  }
}

class SearchCityRequestBuilder
    implements Builder<SearchCityRequest, SearchCityRequestBuilder> {
  _$SearchCityRequest? _$v =_$SearchCityRequest();

  String _kind = '';
  String get kind => _$this._kind;
  set kind(String kind) => _$this._kind = kind;

  String _proxyIstelecons = '';
  String get proxyIstelecons => _$this._proxyIstelecons;
  set proxyIstelecons(String proxyIstelecons) =>
      _$this._proxyIstelecons = proxyIstelecons;

  String _term = '';
  String get term => _$this._term;
  set term(String term) => _$this._term = term;

  SearchCityRequestBuilder();

  SearchCityRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _proxyIstelecons = $v.proxyIstelecons;
      _term = $v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchCityRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchCityRequest;
  }

  @override
  void update(void Function(SearchCityRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchCityRequest build() {
    final _$result = _$v ??
        new _$SearchCityRequest._(
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, 'SearchCityRequest', 'kind'),
            proxyIstelecons: BuiltValueNullFieldError.checkNotNull(
                proxyIstelecons, 'SearchCityRequest', 'proxyIstelecons'),
            term: BuiltValueNullFieldError.checkNotNull(
                term, 'SearchCityRequest', 'term'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
