// GENERATED CODE - DO NOT MODIFY BY HAND

part of search_doctor_details_response;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SearchDoctorDetailsResponse>
    _$searchDoctorDetailsResponseSerializer =
    new _$SearchDoctorDetailsResponseSerializer();
Serializer<ParamsDoctorDetails> _$paramsDoctorDetailsSerializer =
    new _$ParamsDoctorDetailsSerializer();
Serializer<DataDoctorDetails> _$dataDoctorDetailsSerializer =
    new _$DataDoctorDetailsSerializer();
Serializer<AppointmentDoctorDetails> _$appointmentDoctorDetailsSerializer =
    new _$AppointmentDoctorDetailsSerializer();
Serializer<Chapters> _$chaptersSerializer = new _$ChaptersSerializer();

class _$SearchDoctorDetailsResponseSerializer
    implements StructuredSerializer<SearchDoctorDetailsResponse> {
  @override
  final Iterable<Type> types = const [
    SearchDoctorDetailsResponse,
    _$SearchDoctorDetailsResponse
  ];
  @override
  final String wireName = 'SearchDoctorDetailsResponse';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SearchDoctorDetailsResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'httpstatut',
      serializers.serialize(object.httpstatut,
          specifiedType: const FullType(int)),
      'version',
      serializers.serialize(object.version,
          specifiedType: const FullType(String)),
      'request',
      serializers.serialize(object.request,
          specifiedType: const FullType(String)),
      'params',
      serializers.serialize(object.params,
          specifiedType: const FullType(ParamsDoctorDetails)),
      'error',
      serializers.serialize(object.error,
          specifiedType: const FullType(String)),
      'message',
      serializers.serialize(object.message,
          specifiedType: const FullType(String)),
      'data',
      serializers.serialize(object.data,
          specifiedType: const FullType(DataDoctorDetails)),
    ];

    return result;
  }

  @override
  SearchDoctorDetailsResponse deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SearchDoctorDetailsResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'version':
          result.version = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'request':
          result.request = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'params':
          result.params.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ParamsDoctorDetails))
              as ParamsDoctorDetails);
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType: const FullType(DataDoctorDetails))
              as DataDoctorDetails);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsDoctorDetailsSerializer
    implements StructuredSerializer<ParamsDoctorDetails> {
  @override
  final Iterable<Type> types = const [
    ParamsDoctorDetails,
    _$ParamsDoctorDetails
  ];
  @override
  final String wireName = 'ParamsDoctorDetails';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsDoctorDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  ParamsDoctorDetails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsDoctorDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataDoctorDetailsSerializer
    implements StructuredSerializer<DataDoctorDetails> {
  @override
  final Iterable<Type> types = const [DataDoctorDetails, _$DataDoctorDetails];
  @override
  final String wireName = 'DataDoctorDetails';

  @override
  Iterable<Object> serialize(Serializers serializers, DataDoctorDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'category',
      serializers.serialize(object.category,
          specifiedType: const FullType(String)),
      'id_category',
      serializers.serialize(object.idCategory,
          specifiedType: const FullType(String)),
      'icon',
      serializers.serialize(object.icon, specifiedType: const FullType(String)),
      'id',
      serializers.serialize(object.id, specifiedType: const FullType(String)),
      'civility',
      serializers.serialize(object.civility,
          specifiedType: const FullType(String)),
      'nom',
      serializers.serialize(object.nom, specifiedType: const FullType(String)),
      'address',
      serializers.serialize(object.address,
          specifiedType: const FullType(String)),
      'zip',
      serializers.serialize(object.zip, specifiedType: const FullType(String)),
      'city',
      serializers.serialize(object.city, specifiedType: const FullType(String)),
      'id_city',
      serializers.serialize(object.idCity,
          specifiedType: const FullType(String)),
      'lat',
      serializers.serialize(object.lat, specifiedType: const FullType(String)),
      'lng',
      serializers.serialize(object.lng, specifiedType: const FullType(String)),
      'tel',
      serializers.serialize(object.tel, specifiedType: const FullType(String)),
      'telnospace',
      serializers.serialize(object.telnospace,
          specifiedType: const FullType(String)),
      'appointment',
      serializers.serialize(object.appointment,
          specifiedType: const FullType(AppointmentDoctorDetails)),
      'chapters',
      serializers.serialize(object.chapters,
          specifiedType:
              const FullType(BuiltList, const [const FullType(Chapters)])),
      'id_agenda',
      serializers.serialize(object.idAgenda,
          specifiedType: const FullType(String)),
    ];
    Object value;
    value = object.kmDiff;
    if (value != null) {
      result
        ..add('km_diff')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.prenom;
    if (value != null) {
      result
        ..add('prenom')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  DataDoctorDetails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataDoctorDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id_category':
          result.idCategory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'icon':
          result.icon = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'km_diff':
          result.kmDiff = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'civility':
          result.civility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'nom':
          result.nom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'zip':
          result.zip = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'city':
          result.city = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id_city':
          result.idCity = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lat':
          result.lat = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'lng':
          result.lng = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tel':
          result.tel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'telnospace':
          result.telnospace = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'appointment':
          result.appointment.replace(serializers.deserialize(value,
                  specifiedType: const FullType(AppointmentDoctorDetails))
              as AppointmentDoctorDetails);
          break;
        case 'chapters':
          result.chapters.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Chapters)]))
              as BuiltList<Object>);
          break;
        case 'prenom':
          result.prenom = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id_agenda':
          result.idAgenda = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppointmentDoctorDetailsSerializer
    implements StructuredSerializer<AppointmentDoctorDetails> {
  @override
  final Iterable<Type> types = const [
    AppointmentDoctorDetails,
    _$AppointmentDoctorDetails
  ];
  @override
  final String wireName = 'AppointmentDoctorDetails';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AppointmentDoctorDetails object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'token',
      serializers.serialize(object.token,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  AppointmentDoctorDetails deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppointmentDoctorDetailsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ChaptersSerializer implements StructuredSerializer<Chapters> {
  @override
  final Iterable<Type> types = const [Chapters, _$Chapters];
  @override
  final String wireName = 'Chapters';

  @override
  Iterable<Object> serialize(Serializers serializers, Chapters object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[
      'title',
      serializers.serialize(object.title,
          specifiedType: const FullType(String)),
      'description',
      serializers.serialize(object.description,
          specifiedType: const FullType(String)),
    ];

    return result;
  }

  @override
  Chapters deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChaptersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SearchDoctorDetailsResponse extends SearchDoctorDetailsResponse {
  @override
  final int httpstatut;
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsDoctorDetails params;
  @override
  final String error;
  @override
  final String message;
  @override
  final DataDoctorDetails data;

  factory _$SearchDoctorDetailsResponse(
          [void Function(SearchDoctorDetailsResponseBuilder) updates]) =>
      (new SearchDoctorDetailsResponseBuilder()..update(updates)).build();

  _$SearchDoctorDetailsResponse._(
      {this.httpstatut,
      this.version,
      this.request,
      this.params,
      this.error,
      this.message,
      this.data})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        httpstatut, 'SearchDoctorDetailsResponse', 'httpstatut');
    BuiltValueNullFieldError.checkNotNull(
        version, 'SearchDoctorDetailsResponse', 'version');
    BuiltValueNullFieldError.checkNotNull(
        request, 'SearchDoctorDetailsResponse', 'request');
    BuiltValueNullFieldError.checkNotNull(
        params, 'SearchDoctorDetailsResponse', 'params');
    BuiltValueNullFieldError.checkNotNull(
        error, 'SearchDoctorDetailsResponse', 'error');
    BuiltValueNullFieldError.checkNotNull(
        message, 'SearchDoctorDetailsResponse', 'message');
    BuiltValueNullFieldError.checkNotNull(
        data, 'SearchDoctorDetailsResponse', 'data');
  }

  @override
  SearchDoctorDetailsResponse rebuild(
          void Function(SearchDoctorDetailsResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SearchDoctorDetailsResponseBuilder toBuilder() =>
      new SearchDoctorDetailsResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SearchDoctorDetailsResponse &&
        httpstatut == other.httpstatut &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        error == other.error &&
        message == other.message &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, httpstatut.hashCode), version.hashCode),
                        request.hashCode),
                    params.hashCode),
                error.hashCode),
            message.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SearchDoctorDetailsResponse')
          ..add('httpstatut', httpstatut)
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('error', error)
          ..add('message', message)
          ..add('data', data))
        .toString();
  }
}

class SearchDoctorDetailsResponseBuilder
    implements
        Builder<SearchDoctorDetailsResponse,
            SearchDoctorDetailsResponseBuilder> {
  _$SearchDoctorDetailsResponse _$v;

  int _httpstatut;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _version;
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request;
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsDoctorDetailsBuilder _params;
  ParamsDoctorDetailsBuilder get params =>
      _$this._params ??= new ParamsDoctorDetailsBuilder();
  set params(ParamsDoctorDetailsBuilder params) => _$this._params = params;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DataDoctorDetailsBuilder _data;
  DataDoctorDetailsBuilder get data =>
      _$this._data ??= new DataDoctorDetailsBuilder();
  set data(DataDoctorDetailsBuilder data) => _$this._data = data;

  SearchDoctorDetailsResponseBuilder();

  SearchDoctorDetailsResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _httpstatut = $v.httpstatut;
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _error = $v.error;
      _message = $v.message;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SearchDoctorDetailsResponse other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SearchDoctorDetailsResponse;
  }

  @override
  void update(void Function(SearchDoctorDetailsResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SearchDoctorDetailsResponse build() {
    _$SearchDoctorDetailsResponse _$result;
    try {
      _$result = _$v ??
          new _$SearchDoctorDetailsResponse._(
              httpstatut: BuiltValueNullFieldError.checkNotNull(
                  httpstatut, 'SearchDoctorDetailsResponse', 'httpstatut'),
              version: BuiltValueNullFieldError.checkNotNull(
                  version, 'SearchDoctorDetailsResponse', 'version'),
              request: BuiltValueNullFieldError.checkNotNull(
                  request, 'SearchDoctorDetailsResponse', 'request'),
              params: params.build(),
              error: BuiltValueNullFieldError.checkNotNull(
                  error, 'SearchDoctorDetailsResponse', 'error'),
              message: BuiltValueNullFieldError.checkNotNull(
                  message, 'SearchDoctorDetailsResponse', 'message'),
              data: data.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'params';
        params.build();

        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SearchDoctorDetailsResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsDoctorDetails extends ParamsDoctorDetails {
  @override
  final String id;

  factory _$ParamsDoctorDetails(
          [void Function(ParamsDoctorDetailsBuilder) updates]) =>
      (new ParamsDoctorDetailsBuilder()..update(updates)).build();

  _$ParamsDoctorDetails._({this.id}) : super._() {
    BuiltValueNullFieldError.checkNotNull(id, 'ParamsDoctorDetails', 'id');
  }

  @override
  ParamsDoctorDetails rebuild(
          void Function(ParamsDoctorDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ParamsDoctorDetailsBuilder toBuilder() =>
      new ParamsDoctorDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsDoctorDetails && id == other.id;
  }

  @override
  int get hashCode {
    return $jf($jc(0, id.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsDoctorDetails')..add('id', id))
        .toString();
  }
}

class ParamsDoctorDetailsBuilder
    implements Builder<ParamsDoctorDetails, ParamsDoctorDetailsBuilder> {
  _$ParamsDoctorDetails _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  ParamsDoctorDetailsBuilder();

  ParamsDoctorDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsDoctorDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsDoctorDetails;
  }

  @override
  void update(void Function(ParamsDoctorDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsDoctorDetails build() {
    final _$result = _$v ??
        new _$ParamsDoctorDetails._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, 'ParamsDoctorDetails', 'id'));
    replace(_$result);
    return _$result;
  }
}

class _$DataDoctorDetails extends DataDoctorDetails {
  @override
  final String category;
  @override
  final String idCategory;
  @override
  final String icon;
  @override
  final String kmDiff;
  @override
  final String id;
  @override
  final String civility;
  @override
  final String nom;
  @override
  final String address;
  @override
  final String zip;
  @override
  final String city;
  @override
  final String idCity;
  @override
  final String lat;
  @override
  final String lng;
  @override
  final String tel;
  @override
  final String telnospace;
  @override
  final AppointmentDoctorDetails appointment;
  @override
  final BuiltList<Chapters> chapters;
  @override
  final String prenom;
  @override
  final String idAgenda;

  factory _$DataDoctorDetails(
          [void Function(DataDoctorDetailsBuilder) updates]) =>
      (new DataDoctorDetailsBuilder()..update(updates)).build();

  _$DataDoctorDetails._(
      {this.category,
      this.idCategory,
      this.icon,
      this.kmDiff,
      this.id,
      this.civility,
      this.nom,
      this.address,
      this.zip,
      this.city,
      this.idCity,
      this.lat,
      this.lng,
      this.tel,
      this.telnospace,
      this.appointment,
      this.chapters,
      this.prenom,
      this.idAgenda})
      : super._() {
    BuiltValueNullFieldError.checkNotNull(
        category, 'DataDoctorDetails', 'category');
    BuiltValueNullFieldError.checkNotNull(
        idCategory, 'DataDoctorDetails', 'idCategory');
    BuiltValueNullFieldError.checkNotNull(icon, 'DataDoctorDetails', 'icon');
    BuiltValueNullFieldError.checkNotNull(id, 'DataDoctorDetails', 'id');
    BuiltValueNullFieldError.checkNotNull(
        civility, 'DataDoctorDetails', 'civility');
    BuiltValueNullFieldError.checkNotNull(nom, 'DataDoctorDetails', 'nom');
    BuiltValueNullFieldError.checkNotNull(
        address, 'DataDoctorDetails', 'address');
    BuiltValueNullFieldError.checkNotNull(zip, 'DataDoctorDetails', 'zip');
    BuiltValueNullFieldError.checkNotNull(city, 'DataDoctorDetails', 'city');
    BuiltValueNullFieldError.checkNotNull(
        idCity, 'DataDoctorDetails', 'idCity');
    BuiltValueNullFieldError.checkNotNull(lat, 'DataDoctorDetails', 'lat');
    BuiltValueNullFieldError.checkNotNull(lng, 'DataDoctorDetails', 'lng');
    BuiltValueNullFieldError.checkNotNull(tel, 'DataDoctorDetails', 'tel');
    BuiltValueNullFieldError.checkNotNull(
        telnospace, 'DataDoctorDetails', 'telnospace');
    BuiltValueNullFieldError.checkNotNull(
        appointment, 'DataDoctorDetails', 'appointment');
    BuiltValueNullFieldError.checkNotNull(
        chapters, 'DataDoctorDetails', 'chapters');
    BuiltValueNullFieldError.checkNotNull(
        idAgenda, 'DataDoctorDetails', 'idAgenda');
  }

  @override
  DataDoctorDetails rebuild(void Function(DataDoctorDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataDoctorDetailsBuilder toBuilder() =>
      new DataDoctorDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataDoctorDetails &&
        category == other.category &&
        idCategory == other.idCategory &&
        icon == other.icon &&
        kmDiff == other.kmDiff &&
        id == other.id &&
        civility == other.civility &&
        nom == other.nom &&
        address == other.address &&
        zip == other.zip &&
        city == other.city &&
        idCity == other.idCity &&
        lat == other.lat &&
        lng == other.lng &&
        tel == other.tel &&
        telnospace == other.telnospace &&
        appointment == other.appointment &&
        chapters == other.chapters &&
        prenom == other.prenom &&
        idAgenda == other.idAgenda;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc(0,
                                                                                category.hashCode),
                                                                            idCategory.hashCode),
                                                                        icon.hashCode),
                                                                    kmDiff.hashCode),
                                                                id.hashCode),
                                                            civility.hashCode),
                                                        nom.hashCode),
                                                    address.hashCode),
                                                zip.hashCode),
                                            city.hashCode),
                                        idCity.hashCode),
                                    lat.hashCode),
                                lng.hashCode),
                            tel.hashCode),
                        telnospace.hashCode),
                    appointment.hashCode),
                chapters.hashCode),
            prenom.hashCode),
        idAgenda.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataDoctorDetails')
          ..add('category', category)
          ..add('idCategory', idCategory)
          ..add('icon', icon)
          ..add('kmDiff', kmDiff)
          ..add('id', id)
          ..add('civility', civility)
          ..add('nom', nom)
          ..add('address', address)
          ..add('zip', zip)
          ..add('city', city)
          ..add('idCity', idCity)
          ..add('lat', lat)
          ..add('lng', lng)
          ..add('tel', tel)
          ..add('telnospace', telnospace)
          ..add('appointment', appointment)
          ..add('chapters', chapters)
          ..add('prenom', prenom)
          ..add('idAgenda', idAgenda))
        .toString();
  }
}

class DataDoctorDetailsBuilder
    implements Builder<DataDoctorDetails, DataDoctorDetailsBuilder> {
  _$DataDoctorDetails _$v;

  String _category;
  String get category => _$this._category;
  set category(String category) => _$this._category = category;

  String _idCategory;
  String get idCategory => _$this._idCategory;
  set idCategory(String idCategory) => _$this._idCategory = idCategory;

  String _icon;
  String get icon => _$this._icon;
  set icon(String icon) => _$this._icon = icon;

  String _kmDiff;
  String get kmDiff => _$this._kmDiff;
  set kmDiff(String kmDiff) => _$this._kmDiff = kmDiff;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _civility;
  String get civility => _$this._civility;
  set civility(String civility) => _$this._civility = civility;

  String _nom;
  String get nom => _$this._nom;
  set nom(String nom) => _$this._nom = nom;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _zip;
  String get zip => _$this._zip;
  set zip(String zip) => _$this._zip = zip;

  String _city;
  String get city => _$this._city;
  set city(String city) => _$this._city = city;

  String _idCity;
  String get idCity => _$this._idCity;
  set idCity(String idCity) => _$this._idCity = idCity;

  String _lat;
  String get lat => _$this._lat;
  set lat(String lat) => _$this._lat = lat;

  String _lng;
  String get lng => _$this._lng;
  set lng(String lng) => _$this._lng = lng;

  String _tel;
  String get tel => _$this._tel;
  set tel(String tel) => _$this._tel = tel;

  String _telnospace;
  String get telnospace => _$this._telnospace;
  set telnospace(String telnospace) => _$this._telnospace = telnospace;

  AppointmentDoctorDetailsBuilder _appointment;
  AppointmentDoctorDetailsBuilder get appointment =>
      _$this._appointment ??= new AppointmentDoctorDetailsBuilder();
  set appointment(AppointmentDoctorDetailsBuilder appointment) =>
      _$this._appointment = appointment;

  ListBuilder<Chapters> _chapters;
  ListBuilder<Chapters> get chapters =>
      _$this._chapters ??= new ListBuilder<Chapters>();
  set chapters(ListBuilder<Chapters> chapters) => _$this._chapters = chapters;

  String _prenom;
  String get prenom => _$this._prenom;
  set prenom(String prenom) => _$this._prenom = prenom;

  String _idAgenda;
  String get idAgenda => _$this._idAgenda;
  set idAgenda(String idAgenda) => _$this._idAgenda = idAgenda;

  DataDoctorDetailsBuilder();

  DataDoctorDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _idCategory = $v.idCategory;
      _icon = $v.icon;
      _kmDiff = $v.kmDiff;
      _id = $v.id;
      _civility = $v.civility;
      _nom = $v.nom;
      _address = $v.address;
      _zip = $v.zip;
      _city = $v.city;
      _idCity = $v.idCity;
      _lat = $v.lat;
      _lng = $v.lng;
      _tel = $v.tel;
      _telnospace = $v.telnospace;
      _appointment = $v.appointment.toBuilder();
      _chapters = $v.chapters.toBuilder();
      _prenom = $v.prenom;
      _idAgenda = $v.idAgenda;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataDoctorDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataDoctorDetails;
  }

  @override
  void update(void Function(DataDoctorDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataDoctorDetails build() {
    _$DataDoctorDetails _$result;
    try {
      _$result = _$v ??
          new _$DataDoctorDetails._(
              category: BuiltValueNullFieldError.checkNotNull(
                  category, 'DataDoctorDetails', 'category'),
              idCategory: BuiltValueNullFieldError.checkNotNull(
                  idCategory, 'DataDoctorDetails', 'idCategory'),
              icon: BuiltValueNullFieldError.checkNotNull(
                  icon, 'DataDoctorDetails', 'icon'),
              kmDiff: kmDiff,
              id: BuiltValueNullFieldError.checkNotNull(
                  id, 'DataDoctorDetails', 'id'),
              civility: BuiltValueNullFieldError.checkNotNull(
                  civility, 'DataDoctorDetails', 'civility'),
              nom: BuiltValueNullFieldError.checkNotNull(
                  nom, 'DataDoctorDetails', 'nom'),
              address: BuiltValueNullFieldError.checkNotNull(
                  address, 'DataDoctorDetails', 'address'),
              zip: BuiltValueNullFieldError.checkNotNull(
                  zip, 'DataDoctorDetails', 'zip'),
              city: BuiltValueNullFieldError.checkNotNull(
                  city, 'DataDoctorDetails', 'city'),
              idCity: BuiltValueNullFieldError.checkNotNull(idCity, 'DataDoctorDetails', 'idCity'),
              lat: BuiltValueNullFieldError.checkNotNull(lat, 'DataDoctorDetails', 'lat'),
              lng: BuiltValueNullFieldError.checkNotNull(lng, 'DataDoctorDetails', 'lng'),
              tel: BuiltValueNullFieldError.checkNotNull(tel, 'DataDoctorDetails', 'tel'),
              telnospace: BuiltValueNullFieldError.checkNotNull(telnospace, 'DataDoctorDetails', 'telnospace'),
              appointment: appointment.build(),
              chapters: chapters.build(),
              prenom: prenom,
              idAgenda: BuiltValueNullFieldError.checkNotNull(idAgenda, 'DataDoctorDetails', 'idAgenda'));
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'appointment';
        appointment.build();
        _$failedField = 'chapters';
        chapters.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataDoctorDetails', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$AppointmentDoctorDetails extends AppointmentDoctorDetails {
  @override
  final String token;

  factory _$AppointmentDoctorDetails(
          [void Function(AppointmentDoctorDetailsBuilder) updates]) =>
      (new AppointmentDoctorDetailsBuilder()..update(updates)).build();

  _$AppointmentDoctorDetails._({this.token}) : super._() {
    BuiltValueNullFieldError.checkNotNull(
        token, 'AppointmentDoctorDetails', 'token');
  }

  @override
  AppointmentDoctorDetails rebuild(
          void Function(AppointmentDoctorDetailsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AppointmentDoctorDetailsBuilder toBuilder() =>
      new AppointmentDoctorDetailsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AppointmentDoctorDetails && token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(0, token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AppointmentDoctorDetails')
          ..add('token', token))
        .toString();
  }
}

class AppointmentDoctorDetailsBuilder
    implements
        Builder<AppointmentDoctorDetails, AppointmentDoctorDetailsBuilder> {
  _$AppointmentDoctorDetails _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  AppointmentDoctorDetailsBuilder();

  AppointmentDoctorDetailsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AppointmentDoctorDetails other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$AppointmentDoctorDetails;
  }

  @override
  void update(void Function(AppointmentDoctorDetailsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AppointmentDoctorDetails build() {
    final _$result = _$v ??
        new _$AppointmentDoctorDetails._(
            token: BuiltValueNullFieldError.checkNotNull(
                token, 'AppointmentDoctorDetails', 'token'));
    replace(_$result);
    return _$result;
  }
}

class _$Chapters extends Chapters {
  @override
  final String title;
  @override
  final String description;

  factory _$Chapters([void Function(ChaptersBuilder) updates]) =>
      (new ChaptersBuilder()..update(updates)).build();

  _$Chapters._({this.title, this.description}) : super._() {
    BuiltValueNullFieldError.checkNotNull(title, 'Chapters', 'title');
    BuiltValueNullFieldError.checkNotNull(
        description, 'Chapters', 'description');
  }

  @override
  Chapters rebuild(void Function(ChaptersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChaptersBuilder toBuilder() => new ChaptersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Chapters &&
        title == other.title &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Chapters')
          ..add('title', title)
          ..add('description', description))
        .toString();
  }
}

class ChaptersBuilder implements Builder<Chapters, ChaptersBuilder> {
  _$Chapters _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  ChaptersBuilder();

  ChaptersBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _description = $v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Chapters other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Chapters;
  }

  @override
  void update(void Function(ChaptersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Chapters build() {
    final _$result = _$v ??
        new _$Chapters._(
            title: BuiltValueNullFieldError.checkNotNull(
                title, 'Chapters', 'title'),
            description: BuiltValueNullFieldError.checkNotNull(
                description, 'Chapters', 'description'));
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
