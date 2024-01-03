// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_name_request;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchNameRequest> _$searchNameRequestSerializer =
    new _$SearchNameRequestSerializer();

class _$SearchNameRequestSerializer
    implements StructuredSerializer<SearchNameRequest> {
  @override
  final Iterable<Type> types = const [SearchNameRequest, _$SearchNameRequest];
  @override
  final String wireName = 'SearchNameRequest';

  @override
  Iterable<Object> serialize(Serializers serializers, SearchNameRequest object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'kind',
      serializers.serialize(object.kind, specifiedType: const FullType(String)),
      'cp',
      serializers.serialize(object.cp, specifiedType: const FullType(String)),
      'proxy_istelecons',
      serializers.serialize(object.proxyIstelecons,
          specifiedType: const FullType(String)),
      'term',
      serializers.serialize(object.term, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  SearchNameRequest deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchNameRequestBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'kind':
          result.kind = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'cp':
          result.cp = serializers.deserialize(value,
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

class _$SearchNameRequest extends SearchNameRequest {
  @override
  final String kind;
  @override
  final String cp;
  @override
  final String proxyIstelecons;
  @override
  final String term;

  factory _$SearchNameRequest(
          [void Function(SearchNameRequestBuilder) updates]) =>
      (new SearchNameRequestBuilder()..update(updates)).build();

  _$SearchNameRequest._({this.kind, this.cp, this.proxyIstelecons, this.term})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(kind, 'SearchNameRequest', 'kind');
    BuiltValueNullFieldError.checkNotNull(cp, 'SearchNameRequest', 'cp');
    BuiltValueNullFieldError.checkNotNull(
        proxyIstelecons, 'SearchNameRequest', 'proxyIstelecons');
    BuiltValueNullFieldError.checkNotNull(term, 'SearchNameRequest', 'term');
  }

  @override
  SearchNameRequest rebuild(void Function(SearchNameRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchNameRequestBuilder toBuilder() =>
      new SearchNameRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchNameRequest &&
        kind == other.kind &&
        cp == other.cp &&
        proxyIstelecons == other.proxyIstelecons &&
        term == other.term;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, kind.hashCode), cp.hashCode), proxyIstelecons.hashCode),
        term.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchNameRequest')
          ..add('kind', kind)
          ..add('cp', cp)
          ..add('proxyIstelecons', proxyIstelecons)
          ..add('term', term))
        .toString();
  }
}

class SearchNameRequestBuilder
    implements Builder<SearchNameRequest, SearchNameRequestBuilder> {
  _$SearchNameRequest _$v;

  String _kind;
  String get kind => _$this._kind;
  set kind(String kind) => _$this._kind = kind;

  String _cp;
  String get cp => _$this._cp;
  set cp(String cp) => _$this._cp = cp;

  String _proxyIstelecons;
  String get proxyIstelecons => _$this._proxyIstelecons;
  set proxyIstelecons(String proxyIstelecons) =>
      _$this._proxyIstelecons = proxyIstelecons;

  String _term;
  String get term => _$this._term;
  set term(String term) => _$this._term = term;

  SearchNameRequestBuilder();

  SearchNameRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _kind = $v.kind;
      _cp = $v.cp;
      _proxyIstelecons = $v.proxyIstelecons;
      _term = $v.term;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchNameRequest other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchNameRequest;
  }

  @override
  void update(void Function(SearchNameRequestBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchNameRequest build() {
    final _$result = _$v ??
        new _$SearchNameRequest._(
            kind: BuiltValueNullFieldError.checkNotNull(
                kind, 'SearchNameRequest', 'kind'),
            cp: BuiltValueNullFieldError.checkNotNull(
                cp, 'SearchNameRequest', 'cp'),
            proxyIstelecons: BuiltValueNullFieldError.checkNotNull(
                proxyIstelecons, 'SearchNameRequest', 'proxyIstelecons'),
            term: BuiltValueNullFieldError.checkNotNull(
                term, 'SearchNameRequest', 'term'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
