// GENERATED CODE - DO NOT MODIFY BY HAND

part of selected_patient_response_for_rdv;

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SelectedPatientResponseForRdv>
    _$selectedPatientResponseForRdvSerializer =
    new _$SelectedPatientResponseForRdvSerializer();
Serializer<ParamsSelectedPatientResponseForRdv>
    _$paramsSelectedPatientResponseForRdvSerializer =
    new _$ParamsSelectedPatientResponseForRdvSerializer();
Serializer<DataSelectedPatientResponseForRdv>
    _$dataSelectedPatientResponseForRdvSerializer =
    new _$DataSelectedPatientResponseForRdvSerializer();
Serializer<DataSelectedPatientResponseForRdvBody>
    _$dataSelectedPatientResponseForRdvBodySerializer =
    new _$DataSelectedPatientResponseForRdvBodySerializer();
Serializer<Apptsinprogress> _$apptsinprogressSerializer =
    new _$ApptsinprogressSerializer();
Serializer<Appts> _$apptsSerializer = new _$ApptsSerializer();
Serializer<Appttovalid> _$appttovalidSerializer = new _$AppttovalidSerializer();
Serializer<Apptinput> _$apptinputSerializer = new _$ApptinputSerializer();
Serializer<Apptbuttonvalidation> _$apptbuttonvalidationSerializer =
    new _$ApptbuttonvalidationSerializer();
Serializer<Payment> _$paymentSerializer = new _$PaymentSerializer();

class _$SelectedPatientResponseForRdvSerializer
    implements StructuredSerializer<SelectedPatientResponseForRdv> {
  @override
  final Iterable<Type> types = const [
    SelectedPatientResponseForRdv,
    _$SelectedPatientResponseForRdv
  ];
  @override
  final String wireName = 'SelectedPatientResponseForRdv';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SelectedPatientResponseForRdv object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.version;
    if (value != null) {
      result
        ..add('version')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.request;
    if (value != null) {
      result
        ..add('request')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.params;
    if (value != null) {
      result
        ..add('params')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(ParamsSelectedPatientResponseForRdv))!);
    }
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.httpstatut;
    if (value != null) {
      result
        ..add('httpstatut')
        ..add(serializers.serialize(value, specifiedType: const FullType(int))!);
    }
    value = object.error;
    if (value != null) {
      result
        ..add('error')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DataSelectedPatientResponseForRdv))!);
    }
    return result;
  }

  @override
  SelectedPatientResponseForRdv deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SelectedPatientResponseForRdvBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
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
                  specifiedType:
                      const FullType(ParamsSelectedPatientResponseForRdv))
              as ParamsSelectedPatientResponseForRdv);
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'httpstatut':
          result.httpstatut = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(DataSelectedPatientResponseForRdv))
              as DataSelectedPatientResponseForRdv);
          break;
      }
    }

    return result.build();
  }
}

class _$ParamsSelectedPatientResponseForRdvSerializer
    implements StructuredSerializer<ParamsSelectedPatientResponseForRdv> {
  @override
  final Iterable<Type> types = const [
    ParamsSelectedPatientResponseForRdv,
    _$ParamsSelectedPatientResponseForRdv
  ];
  @override
  final String wireName = 'ParamsSelectedPatientResponseForRdv';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ParamsSelectedPatientResponseForRdv object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.tokenuser;
    if (value != null) {
      result
        ..add('tokenuser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.tokenappointment;
    if (value != null) {
      result
        ..add('tokenappointment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.week;
    if (value != null) {
      result
        ..add('week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.action;
    if (value != null) {
      result
        ..add('action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  ParamsSelectedPatientResponseForRdv deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ParamsSelectedPatientResponseForRdvBuilder();

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
        case 'tokenappointment':
          result.tokenappointment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'week':
          result.week = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$DataSelectedPatientResponseForRdvSerializer
    implements StructuredSerializer<DataSelectedPatientResponseForRdv> {
  @override
  final Iterable<Type> types = const [
    DataSelectedPatientResponseForRdv,
    _$DataSelectedPatientResponseForRdv
  ];
  @override
  final String wireName = 'DataSelectedPatientResponseForRdv';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataSelectedPatientResponseForRdv object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.session;
    if (value != null) {
      result
        ..add('session')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.navigation;
    if (value != null) {
      result
        ..add('navigation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Navigation))!);
    }
    value = object.headermessage;
    if (value != null) {
      result
        ..add('headermessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.type;
    if (value != null) {
      result
        ..add('type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.data;
    if (value != null) {
      result
        ..add('data')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(DataSelectedPatientResponseForRdvBody))!);
    }
    return result;
  }

  @override
  DataSelectedPatientResponseForRdv deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataSelectedPatientResponseForRdvBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'session':
          result.session = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'navigation':
          result.navigation.replace(serializers.deserialize(value,
              specifiedType: const FullType(Navigation)) as Navigation);
          break;
        case 'headermessage':
          result.headermessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'data':
          result.data.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(DataSelectedPatientResponseForRdvBody))
              as DataSelectedPatientResponseForRdvBody);
          break;
      }
    }

    return result.build();
  }
}

class _$DataSelectedPatientResponseForRdvBodySerializer
    implements StructuredSerializer<DataSelectedPatientResponseForRdvBody> {
  @override
  final Iterable<Type> types = const [
    DataSelectedPatientResponseForRdvBody,
    _$DataSelectedPatientResponseForRdvBody
  ];
  @override
  final String wireName = 'DataSelectedPatientResponseForRdvBody';

  @override
  Iterable<Object> serialize(
      Serializers serializers, DataSelectedPatientResponseForRdvBody object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.messageinternet;
    if (value != null) {
      result
        ..add('messageinternet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.messagenbperson;
    if (value != null) {
      result
        ..add('messagenbperson')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.apptsinprogress;
    if (value != null) {
      result
        ..add('apptsinprogress')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Apptsinprogress))!);
    }
    value = object.appttovalid;
    if (value != null) {
      result
        ..add('appttovalid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Appttovalid))!);
    }
    value = object.apptinput;
    if (value != null) {
      result
        ..add('apptinput')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Apptinput)]))!);
    }
    value = object.apptbuttonvalidation;
    if (value != null) {
      result
        ..add('apptbuttonvalidation')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Apptbuttonvalidation))!);
    }
    value = object.messageglobalinternet;
    if (value != null) {
      result
        ..add('messageglobalinternet')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.payment;
    if (value != null) {
      result
        ..add('payment')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(Payment))!);
    }
    return result;
  }

  @override
  DataSelectedPatientResponseForRdvBody deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DataSelectedPatientResponseForRdvBodyBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'messageinternet':
          result.messageinternet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'messagenbperson':
          result.messagenbperson = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'apptsinprogress':
          result.apptsinprogress.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Apptsinprogress))
              as Apptsinprogress);
          break;
        case 'appttovalid':
          result.appttovalid.replace(serializers.deserialize(value,
              specifiedType: const FullType(Appttovalid)) as Appttovalid);
          break;
        case 'apptinput':
          result.apptinput.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Apptinput)]))
              as BuiltList<Object>);
          break;
        case 'apptbuttonvalidation':
          result.apptbuttonvalidation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(Apptbuttonvalidation))
              as Apptbuttonvalidation);
          break;
        case 'messageglobalinternet':
          result.messageglobalinternet = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'payment':
          result.payment.replace(serializers.deserialize(value,
              specifiedType: const FullType(Payment)) as Payment);
          break;
      }
    }

    return result.build();
  }
}

class _$ApptsinprogressSerializer
    implements StructuredSerializer<Apptsinprogress> {
  @override
  final Iterable<Type> types = const [Apptsinprogress, _$Apptsinprogress];
  @override
  final String wireName = 'Apptsinprogress';

  @override
  Iterable<Object> serialize(Serializers serializers, Apptsinprogress object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.appts;
    if (value != null) {
      result
        ..add('appts')
        ..add(serializers.serialize(value,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Appts)]))!);
    }
    return result;
  }

  @override
  Apptsinprogress deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApptsinprogressBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'appts':
          result.appts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Appts)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ApptsSerializer implements StructuredSerializer<Appts> {
  @override
  final Iterable<Type> types = const [Appts, _$Appts];
  @override
  final String wireName = 'Appts';

  @override
  Iterable<Object> serialize(Serializers serializers, Appts object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.doctor;
    if (value != null) {
      result
        ..add('doctor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.token;
    if (value != null) {
      result
        ..add('token')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  Appts deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApptsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'doctor':
          result.doctor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AppttovalidSerializer implements StructuredSerializer<Appttovalid> {
  @override
  final Iterable<Type> types = const [Appttovalid, _$Appttovalid];
  @override
  final String wireName = 'Appttovalid';

  @override
  Iterable<Object> serialize(Serializers serializers, Appttovalid object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.doctor;
    if (value != null) {
      result
        ..add('doctor')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.patient;
    if (value != null) {
      result
        ..add('patient')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  Appttovalid deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AppttovalidBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'doctor':
          result.doctor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'patient':
          result.patient = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ApptinputSerializer implements StructuredSerializer<Apptinput> {
  @override
  final Iterable<Type> types = const [Apptinput, _$Apptinput];
  @override
  final String wireName = 'Apptinput';

  @override
  Iterable<Object> serialize(Serializers serializers, Apptinput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.name;
    if (value != null) {
      result
        ..add('name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.mandatory;
    if (value != null) {
      result
        ..add('mandatory')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.value;
    if (value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  Apptinput deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApptinputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mandatory':
          result.mandatory = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ApptbuttonvalidationSerializer
    implements StructuredSerializer<Apptbuttonvalidation> {
  @override
  final Iterable<Type> types = const [
    Apptbuttonvalidation,
    _$Apptbuttonvalidation
  ];
  @override
  final String wireName = 'Apptbuttonvalidation';

  @override
  Iterable<Object> serialize(
      Serializers serializers, Apptbuttonvalidation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.onclick;
    if (value != null) {
      result
        ..add('onclick')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.label;
    if (value != null) {
      result
        ..add('label')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.onclickData;
    if (value != null) {
      result
        ..add('onclick_data')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.onclickAction;
    if (value != null) {
      result
        ..add('onclick_action')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.onclickWeek;
    if (value != null) {
      result
        ..add('onclick_week')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  Apptbuttonvalidation deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApptbuttonvalidationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'onclick':
          result.onclick = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onclick_data':
          result.onclickData = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onclick_action':
          result.onclickAction = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'onclick_week':
          result.onclickWeek = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PaymentSerializer implements StructuredSerializer<Payment> {
  @override
  final Iterable<Type> types = const [Payment, _$Payment];
  @override
  final String wireName = 'Payment';

  @override
  Iterable<Object> serialize(Serializers serializers, Payment object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.amountlabel;
    if (value != null) {
      result
        ..add('amountlabel')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.amount;
    if (value != null) {
      result
        ..add('amount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.infos;
    if (value != null) {
      result
        ..add('infos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    value = object.pkAccount;
    if (value != null) {
      result
        ..add('pkaccount')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String))!);
    }
    return result;
  }

  @override
  Payment deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PaymentBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current!;
      switch (key) {
        case 'amountlabel':
          result.amountlabel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'amount':
          result.amount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'infos':
          result.infos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pkaccount':
          result.pkAccount = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SelectedPatientResponseForRdv extends SelectedPatientResponseForRdv {
  @override
  final String version;
  @override
  final String request;
  @override
  final ParamsSelectedPatientResponseForRdv params;
  @override
  final String message;
  @override
  final int httpstatut;
  @override
  final String error;
  @override
  final DataSelectedPatientResponseForRdv data;

  factory _$SelectedPatientResponseForRdv(
          [void Function(SelectedPatientResponseForRdvBuilder)? updates]) =>
      (new SelectedPatientResponseForRdvBuilder()..update(updates!)).build();

  _$SelectedPatientResponseForRdv._(
      {
      required this.version,
      required this.request,
      required this.params,
      required this.message,
      required this.httpstatut,
      required this.error,
      required this.data})
      : super._();

  @override
  SelectedPatientResponseForRdv rebuild(
          void Function(SelectedPatientResponseForRdvBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  SelectedPatientResponseForRdvBuilder toBuilder() =>
      new SelectedPatientResponseForRdvBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SelectedPatientResponseForRdv &&
        version == other.version &&
        request == other.request &&
        params == other.params &&
        message == other.message &&
        httpstatut == other.httpstatut &&
        error == other.error &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, version.hashCode), request.hashCode),
                        params.hashCode),
                    message.hashCode),
                httpstatut.hashCode),
            error.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SelectedPatientResponseForRdv')
          ..add('version', version)
          ..add('request', request)
          ..add('params', params)
          ..add('message', message)
          ..add('httpstatut', httpstatut)
          ..add('error', error)
          ..add('data', data))
        .toString();
  }
}

class SelectedPatientResponseForRdvBuilder
    implements
        Builder<SelectedPatientResponseForRdv,
            SelectedPatientResponseForRdvBuilder> {
  _$SelectedPatientResponseForRdv? _$v =_$SelectedPatientResponseForRdv();

  String _version = '';
  String get version => _$this._version;
  set version(String version) => _$this._version = version;

  String _request = '';
  String get request => _$this._request;
  set request(String request) => _$this._request = request;

  ParamsSelectedPatientResponseForRdvBuilder _params =ParamsSelectedPatientResponseForRdvBuilder();
  ParamsSelectedPatientResponseForRdvBuilder get params =>
      _$this._params ??= new ParamsSelectedPatientResponseForRdvBuilder();
  set params(ParamsSelectedPatientResponseForRdvBuilder params) =>
      _$this._params = params;

  String _message = '';
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  int _httpstatut = 0;
  int get httpstatut => _$this._httpstatut;
  set httpstatut(int httpstatut) => _$this._httpstatut = httpstatut;

  String _error = '';
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  DataSelectedPatientResponseForRdvBuilder _data =DataSelectedPatientResponseForRdvBuilder();
  DataSelectedPatientResponseForRdvBuilder get data =>
      _$this._data ??= new DataSelectedPatientResponseForRdvBuilder();
  set data(DataSelectedPatientResponseForRdvBuilder data) =>
      _$this._data = data;

  SelectedPatientResponseForRdvBuilder();

  SelectedPatientResponseForRdvBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _version = $v.version;
      _request = $v.request;
      _params = $v.params.toBuilder();
      _message = $v.message;
      _httpstatut = $v.httpstatut;
      _error = $v.error;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SelectedPatientResponseForRdv other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$SelectedPatientResponseForRdv;
  }

  @override
  void update(void Function(SelectedPatientResponseForRdvBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SelectedPatientResponseForRdv build() {
    _$SelectedPatientResponseForRdv _$result;
    try {
      _$result = _$v ??
          new _$SelectedPatientResponseForRdv._(
              version: version,
              request: request,
              params: _params.build(),
              message: message,
              httpstatut: httpstatut,
              error: error,
              data: _data.build());
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'params';
        _params?.build();

        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SelectedPatientResponseForRdv', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$ParamsSelectedPatientResponseForRdv
    extends ParamsSelectedPatientResponseForRdv {
  @override
  final String tokenuser;
  @override
  final String tokenappointment;
  @override
  final String week;
  @override
  final String data;
  @override
  final String action;
  @override
  final String session;

  factory _$ParamsSelectedPatientResponseForRdv(
          [void Function(ParamsSelectedPatientResponseForRdvBuilder)?
              updates]) =>
      (new ParamsSelectedPatientResponseForRdvBuilder()..update(updates!))
          .build();

  _$ParamsSelectedPatientResponseForRdv._(
      {
      required this.tokenuser,
      required this.tokenappointment,
      required this.week,
      required this.data,
      required this.action,
      required this.session})
      : super._();

  @override
  ParamsSelectedPatientResponseForRdv rebuild(
          void Function(ParamsSelectedPatientResponseForRdvBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ParamsSelectedPatientResponseForRdvBuilder toBuilder() =>
      new ParamsSelectedPatientResponseForRdvBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ParamsSelectedPatientResponseForRdv &&
        tokenuser == other.tokenuser &&
        tokenappointment == other.tokenappointment &&
        week == other.week &&
        data == other.data &&
        action == other.action &&
        session == other.session;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, tokenuser.hashCode), tokenappointment.hashCode),
                    week.hashCode),
                data.hashCode),
            action.hashCode),
        session.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ParamsSelectedPatientResponseForRdv')
          ..add('tokenuser', tokenuser)
          ..add('tokenappointment', tokenappointment)
          ..add('week', week)
          ..add('data', data)
          ..add('action', action)
          ..add('session', session))
        .toString();
  }
}

class ParamsSelectedPatientResponseForRdvBuilder
    implements
        Builder<ParamsSelectedPatientResponseForRdv,
            ParamsSelectedPatientResponseForRdvBuilder> {
  _$ParamsSelectedPatientResponseForRdv? _$v = _$ParamsSelectedPatientResponseForRdv();

  String _tokenuser = '';
  String get tokenuser => _$this._tokenuser;
  set tokenuser(String tokenuser) => _$this._tokenuser = tokenuser;

  String _tokenappointment ='';
  String get tokenappointment => _$this._tokenappointment;
  set tokenappointment(String tokenappointment) =>
      _$this._tokenappointment = tokenappointment;

  String _week ='';
  String get week => _$this._week;
  set week(String week) => _$this._week = week;

  String _data ='';
  String get data => _$this._data;
  set data(String data) => _$this._data = data;

  String _action ='';
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  String _session = '';
  String get session => _$this._session;
  set session(String session) => _$this._session = session;

  ParamsSelectedPatientResponseForRdvBuilder();

  ParamsSelectedPatientResponseForRdvBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _tokenuser = $v.tokenuser;
      _tokenappointment = $v.tokenappointment;
      _week = $v.week;
      _data = $v.data;
      _action = $v.action;
      _session = $v.session;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ParamsSelectedPatientResponseForRdv other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ParamsSelectedPatientResponseForRdv;
  }

  @override
  void update(
      void Function(ParamsSelectedPatientResponseForRdvBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ParamsSelectedPatientResponseForRdv build() {
    final _$result = _$v ??
        new _$ParamsSelectedPatientResponseForRdv._(
            tokenuser: tokenuser,
            tokenappointment: tokenappointment,
            week: week,
            data: data,
            action: action,
            session: session);
    replace(_$result);
    return _$result;
  }
}

class _$DataSelectedPatientResponseForRdv
    extends DataSelectedPatientResponseForRdv {
  @override
  final String session;
  @override
  final Navigation navigation;
  @override
  final String headermessage;
  @override
  final String type;
  @override
  final DataSelectedPatientResponseForRdvBody data;

  factory _$DataSelectedPatientResponseForRdv(
          [void Function(DataSelectedPatientResponseForRdvBuilder)? updates]) =>
      (new DataSelectedPatientResponseForRdvBuilder()..update(updates!)).build();

  _$DataSelectedPatientResponseForRdv._(
      {required this.session,required this.navigation,required this.headermessage,required this.type,required this.data})
      : super._();

  @override
  DataSelectedPatientResponseForRdv rebuild(
          void Function(DataSelectedPatientResponseForRdvBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DataSelectedPatientResponseForRdvBuilder toBuilder() =>
      new DataSelectedPatientResponseForRdvBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataSelectedPatientResponseForRdv &&
        session == other.session &&
        navigation == other.navigation &&
        headermessage == other.headermessage &&
        type == other.type &&
        data == other.data;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, session.hashCode), navigation.hashCode),
                headermessage.hashCode),
            type.hashCode),
        data.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataSelectedPatientResponseForRdv')
          ..add('session', session)
          ..add('navigation', navigation)
          ..add('headermessage', headermessage)
          ..add('type', type)
          ..add('data', data))
        .toString();
  }
}

class DataSelectedPatientResponseForRdvBuilder
    implements
        Builder<DataSelectedPatientResponseForRdv,
            DataSelectedPatientResponseForRdvBuilder> {
  _$DataSelectedPatientResponseForRdv? _$v =_$DataSelectedPatientResponseForRdv();

  String _session = '';
  String get session => _$this._session;
  set session(String session) => _$this._session = session;

  NavigationBuilder _navigation =NavigationBuilder();
  NavigationBuilder get navigation =>
      _$this._navigation ??= new NavigationBuilder();
  set navigation(NavigationBuilder navigation) =>
      _$this._navigation = navigation;

  String _headermessage ='';
  String get headermessage => _$this._headermessage;
  set headermessage(String headermessage) =>
      _$this._headermessage = headermessage;

  String _type ='';
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  DataSelectedPatientResponseForRdvBodyBuilder _data =DataSelectedPatientResponseForRdvBodyBuilder();
  DataSelectedPatientResponseForRdvBodyBuilder get data =>
      _$this._data ??= new DataSelectedPatientResponseForRdvBodyBuilder();
  set data(DataSelectedPatientResponseForRdvBodyBuilder data) =>
      _$this._data = data;

  DataSelectedPatientResponseForRdvBuilder();

  DataSelectedPatientResponseForRdvBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _session = $v.session;
      _navigation = $v.navigation.toBuilder();
      _headermessage = $v.headermessage;
      _type = $v.type;
      _data = $v.data.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataSelectedPatientResponseForRdv other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataSelectedPatientResponseForRdv;
  }

  @override
  void update(void Function(DataSelectedPatientResponseForRdvBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataSelectedPatientResponseForRdv build() {
    _$DataSelectedPatientResponseForRdv _$result;
    try {
      _$result = _$v ??
          new _$DataSelectedPatientResponseForRdv._(
              session: session,
              navigation: _navigation.build(),
              headermessage: headermessage,
              type: type,
              data: _data.build());
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'navigation';
        _navigation?.build();

        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataSelectedPatientResponseForRdv', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$DataSelectedPatientResponseForRdvBody
    extends DataSelectedPatientResponseForRdvBody {
  @override
  final String messageinternet;
  @override
  final String messagenbperson;
  @override
  final Apptsinprogress apptsinprogress;
  @override
  final Appttovalid appttovalid;
  @override
  final BuiltList<Apptinput> apptinput;
  @override
  final Apptbuttonvalidation apptbuttonvalidation;
  @override
  final String messageglobalinternet;
  @override
  final Payment payment;

  factory _$DataSelectedPatientResponseForRdvBody(
          [void Function(DataSelectedPatientResponseForRdvBodyBuilder)?
              updates]) =>
      (new DataSelectedPatientResponseForRdvBodyBuilder()..update(updates!))
          .build();

  _$DataSelectedPatientResponseForRdvBody._(
      {
      required this.messageinternet,
      required this.messagenbperson,
      required this.apptsinprogress,
      required this.appttovalid,
      required this.apptinput,
      required this.apptbuttonvalidation,
      required this.messageglobalinternet,
      required this.payment})
      : super._();

  @override
  DataSelectedPatientResponseForRdvBody rebuild(
          void Function(DataSelectedPatientResponseForRdvBodyBuilder)
              updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  DataSelectedPatientResponseForRdvBodyBuilder toBuilder() =>
      new DataSelectedPatientResponseForRdvBodyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DataSelectedPatientResponseForRdvBody &&
        messageinternet == other.messageinternet &&
        messagenbperson == other.messagenbperson &&
        apptsinprogress == other.apptsinprogress &&
        appttovalid == other.appttovalid &&
        apptinput == other.apptinput &&
        apptbuttonvalidation == other.apptbuttonvalidation &&
        messageglobalinternet == other.messageglobalinternet &&
        payment == other.payment;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc(0, messageinternet.hashCode),
                                messagenbperson.hashCode),
                            apptsinprogress.hashCode),
                        appttovalid.hashCode),
                    apptinput.hashCode),
                apptbuttonvalidation.hashCode),
            messageglobalinternet.hashCode),
        payment.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DataSelectedPatientResponseForRdvBody')
          ..add('messageinternet', messageinternet)
          ..add('messagenbperson', messagenbperson)
          ..add('apptsinprogress', apptsinprogress)
          ..add('appttovalid', appttovalid)
          ..add('apptinput', apptinput)
          ..add('apptbuttonvalidation', apptbuttonvalidation)
          ..add('messageglobalinternet', messageglobalinternet)
          ..add('payment', payment))
        .toString();
  }
}

class DataSelectedPatientResponseForRdvBodyBuilder
    implements
        Builder<DataSelectedPatientResponseForRdvBody,
            DataSelectedPatientResponseForRdvBodyBuilder> {
  _$DataSelectedPatientResponseForRdvBody? _$v =_$DataSelectedPatientResponseForRdvBody();

  String _messageinternet ='';
  String get messageinternet => _$this._messageinternet;
  set messageinternet(String messageinternet) =>
      _$this._messageinternet = messageinternet;

  String _messagenbperson ='';
  String get messagenbperson => _$this._messagenbperson;
  set messagenbperson(String messagenbperson) =>
      _$this._messagenbperson = messagenbperson;

  ApptsinprogressBuilder _apptsinprogress =ApptsinprogressBuilder();
  ApptsinprogressBuilder get apptsinprogress =>
      _$this._apptsinprogress ??= new ApptsinprogressBuilder();
  set apptsinprogress(ApptsinprogressBuilder apptsinprogress) =>
      _$this._apptsinprogress = apptsinprogress;

  AppttovalidBuilder _appttovalid =AppttovalidBuilder();
  AppttovalidBuilder get appttovalid =>
      _$this._appttovalid ??= new AppttovalidBuilder();
  set appttovalid(AppttovalidBuilder appttovalid) =>
      _$this._appttovalid = appttovalid;

  ListBuilder<Apptinput> _apptinput =ListBuilder();
  ListBuilder<Apptinput> get apptinput =>
      _$this._apptinput ??= new ListBuilder<Apptinput>();
  set apptinput(ListBuilder<Apptinput> apptinput) =>
      _$this._apptinput = apptinput;

  ApptbuttonvalidationBuilder _apptbuttonvalidation =ApptbuttonvalidationBuilder();
  ApptbuttonvalidationBuilder get apptbuttonvalidation =>
      _$this._apptbuttonvalidation ??= new ApptbuttonvalidationBuilder();
  set apptbuttonvalidation(ApptbuttonvalidationBuilder apptbuttonvalidation) =>
      _$this._apptbuttonvalidation = apptbuttonvalidation;

  String _messageglobalinternet = '';
  String get messageglobalinternet => _$this._messageglobalinternet;
  set messageglobalinternet(String messageglobalinternet) =>
      _$this._messageglobalinternet = messageglobalinternet;

  PaymentBuilder _payment =PaymentBuilder();
  PaymentBuilder get payment => _$this._payment ??= new PaymentBuilder();
  set payment(PaymentBuilder payment) => _$this._payment = payment;

  DataSelectedPatientResponseForRdvBodyBuilder();

  DataSelectedPatientResponseForRdvBodyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _messageinternet = $v.messageinternet;
      _messagenbperson = $v.messagenbperson;
      _apptsinprogress = $v.apptsinprogress.toBuilder();
      _appttovalid = $v.appttovalid.toBuilder();
      _apptinput = $v.apptinput.toBuilder();
      _apptbuttonvalidation = $v.apptbuttonvalidation.toBuilder();
      _messageglobalinternet = $v.messageglobalinternet;
      _payment = $v.payment.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DataSelectedPatientResponseForRdvBody other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$DataSelectedPatientResponseForRdvBody;
  }

  @override
  void update(
      void Function(DataSelectedPatientResponseForRdvBodyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DataSelectedPatientResponseForRdvBody build() {
    _$DataSelectedPatientResponseForRdvBody _$result;
    try {
      _$result = _$v ??
          new _$DataSelectedPatientResponseForRdvBody._(
              messageinternet: messageinternet,
              messagenbperson: messagenbperson,
              apptsinprogress: _apptsinprogress.build(),
              appttovalid: _appttovalid.build(),
              apptinput: _apptinput.build(),
              apptbuttonvalidation: _apptbuttonvalidation.build(),
              messageglobalinternet: messageglobalinternet,
              payment: _payment.build());
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'apptsinprogress';
        _apptsinprogress.build();
        _$failedField = 'appttovalid';
        _appttovalid.build();
        _$failedField = 'apptinput';
        _apptinput.build();
        _$failedField = 'apptbuttonvalidation';
        _apptbuttonvalidation.build();

        _$failedField = 'payment';
        _payment.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'DataSelectedPatientResponseForRdvBody',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Apptsinprogress extends Apptsinprogress {
  @override
  final String message;
  @override
  final BuiltList<Appts> appts;

  factory _$Apptsinprogress([void Function(ApptsinprogressBuilder)? updates]) =>
      (new ApptsinprogressBuilder()..update(updates!)).build();

  _$Apptsinprogress._({required this.message,required this.appts}) : super._();

  @override
  Apptsinprogress rebuild(void Function(ApptsinprogressBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ApptsinprogressBuilder toBuilder() =>
      new ApptsinprogressBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Apptsinprogress &&
        message == other.message &&
        appts == other.appts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), appts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Apptsinprogress')
          ..add('message', message)
          ..add('appts', appts))
        .toString();
  }
}

class ApptsinprogressBuilder
    implements Builder<Apptsinprogress, ApptsinprogressBuilder> {
  _$Apptsinprogress? _$v =_$Apptsinprogress();

  String _message = '';
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<Appts> _appts =ListBuilder();
  ListBuilder<Appts> get appts => _$this._appts ??= new ListBuilder<Appts>();
  set appts(ListBuilder<Appts> appts) => _$this._appts = appts;

  ApptsinprogressBuilder();

  ApptsinprogressBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _appts = $v.appts.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Apptsinprogress other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Apptsinprogress;
  }

  @override
  void update(void Function(ApptsinprogressBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Apptsinprogress build() {
    late _$Apptsinprogress _$result;
    try {
      _$result = _$v ??
          new _$Apptsinprogress._(message: message, appts: _appts.build());
    } catch (_) {
      String _$failedField = '';
      try {
        _$failedField = 'appts';
        _appts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Apptsinprogress', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

class _$Appts extends Appts {
  @override
  final String date;
  @override
  final String label;
  @override
  final String doctor;
  @override
  final String token;

  factory _$Appts([void Function(ApptsBuilder)? updates]) =>
      (new ApptsBuilder()..update(updates!)).build();

  _$Appts._({required this.date,required this.label,required this.doctor,required this.token}) : super._();

  @override
  Appts rebuild(void Function(ApptsBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ApptsBuilder toBuilder() => new ApptsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Appts &&
        date == other.date &&
        label == other.label &&
        doctor == other.doctor &&
        token == other.token;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, date.hashCode), label.hashCode), doctor.hashCode),
        token.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Appts')
          ..add('date', date)
          ..add('label', label)
          ..add('doctor', doctor)
          ..add('token', token))
        .toString();
  }
}

class ApptsBuilder implements Builder<Appts, ApptsBuilder> {
  _$Appts? _$v = _$Appts();

  String _date = '';
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _label = '';
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _doctor = '';
  String get doctor => _$this._doctor;
  set doctor(String doctor) => _$this._doctor = doctor;

  String _token = '';
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  ApptsBuilder();

  ApptsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _label = $v.label;
      _doctor = $v.doctor;
      _token = $v.token;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Appts other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Appts;
  }

  @override
  void update(void Function(ApptsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Appts build() {
    final _$result = _$v ??
        new _$Appts._(date: date, label: label, doctor: doctor, token: token);
    replace(_$result);
    return _$result;
  }
}

class _$Appttovalid extends Appttovalid {
  @override
  final String date;
  @override
  final String doctor;
  @override
  final String description;
  @override
  final String patient;

  factory _$Appttovalid([void Function(AppttovalidBuilder)? updates]) =>
      (new AppttovalidBuilder()..update(updates!)).build();

  _$Appttovalid._({required this.date,required this.doctor,required this.description,required this.patient})
      : super._();

  @override
  Appttovalid rebuild(void Function(AppttovalidBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  AppttovalidBuilder toBuilder() => new AppttovalidBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Appttovalid &&
        date == other.date &&
        doctor == other.doctor &&
        description == other.description &&
        patient == other.patient;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, date.hashCode), doctor.hashCode), description.hashCode),
        patient.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Appttovalid')
          ..add('date', date)
          ..add('doctor', doctor)
          ..add('description', description)
          ..add('patient', patient))
        .toString();
  }
}

class AppttovalidBuilder implements Builder<Appttovalid, AppttovalidBuilder> {
  _$Appttovalid? _$v = _$Appttovalid();

  String _date = '';
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _doctor = '';
  String get doctor => _$this._doctor;
  set doctor(String doctor) => _$this._doctor = doctor;

  String _description = '';
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _patient  ='';
  String get patient => _$this._patient;
  set patient(String patient) => _$this._patient = patient;

  AppttovalidBuilder();

  AppttovalidBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _date = $v.date;
      _doctor = $v.doctor;
      _description = $v.description;
      _patient = $v.patient;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Appttovalid other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Appttovalid;
  }

  @override
  void update(void Function(AppttovalidBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Appttovalid build() {
    final _$result = _$v ??
        new _$Appttovalid._(
            date: date,
            doctor: doctor,
            description: description,
            patient: patient);
    replace(_$result);
    return _$result;
  }
}

class _$Apptinput extends Apptinput {
  @override
  final String name;
  @override
  final String mandatory;
  @override
  final String label;
  @override
  final String value;

  factory _$Apptinput([void Function(ApptinputBuilder)? updates]) =>
      (new ApptinputBuilder()..update(updates!)).build();

  _$Apptinput._({required this.name,required this.mandatory,required this.label,required this.value})
      : super._();

  @override
  Apptinput rebuild(void Function(ApptinputBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ApptinputBuilder toBuilder() => new ApptinputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Apptinput &&
        name == other.name &&
        mandatory == other.mandatory &&
        label == other.label &&
        value == other.value;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), mandatory.hashCode), label.hashCode),
        value.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Apptinput')
          ..add('name', name)
          ..add('mandatory', mandatory)
          ..add('label', label)
          ..add('value', value))
        .toString();
  }
}

class ApptinputBuilder implements Builder<Apptinput, ApptinputBuilder> {
  _$Apptinput? _$v =_$Apptinput();

  String _name='';
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _mandatory ='';
  String get mandatory => _$this._mandatory;
  set mandatory(String mandatory) => _$this._mandatory = mandatory;

  String _label = '';
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _value = '';
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  ApptinputBuilder();

  ApptinputBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _mandatory = $v.mandatory;
      _label = $v.label;
      _value = $v.value;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Apptinput other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Apptinput;
  }

  @override
  void update(void Function(ApptinputBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Apptinput build() {
    final _$result = _$v ??
        new _$Apptinput._(
            name: name, mandatory: mandatory, label: label, value: value);
    replace(_$result);
    return _$result;
  }
}

class _$Apptbuttonvalidation extends Apptbuttonvalidation {
  @override
  final String onclick;
  @override
  final String label;
  @override
  final String onclickData;
  @override
  final String onclickAction;
  @override
  final String onclickWeek;

  factory _$Apptbuttonvalidation(
          [void Function(ApptbuttonvalidationBuilder)? updates]) =>
      (new ApptbuttonvalidationBuilder()..update(updates!)).build();

  _$Apptbuttonvalidation._(
      {
      required this.onclick,
      required this.label,
      required this.onclickData,
      required this.onclickAction,
      required this.onclickWeek})
      : super._();

  @override
  Apptbuttonvalidation rebuild(
          void Function(ApptbuttonvalidationBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  ApptbuttonvalidationBuilder toBuilder() =>
      new ApptbuttonvalidationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Apptbuttonvalidation &&
        onclick == other.onclick &&
        label == other.label &&
        onclickData == other.onclickData &&
        onclickAction == other.onclickAction &&
        onclickWeek == other.onclickWeek;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, onclick.hashCode), label.hashCode),
                onclickData.hashCode),
            onclickAction.hashCode),
        onclickWeek.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Apptbuttonvalidation')
          ..add('onclick', onclick)
          ..add('label', label)
          ..add('onclickData', onclickData)
          ..add('onclickAction', onclickAction)
          ..add('onclickWeek', onclickWeek))
        .toString();
  }
}

class ApptbuttonvalidationBuilder
    implements Builder<Apptbuttonvalidation, ApptbuttonvalidationBuilder> {
  _$Apptbuttonvalidation? _$v =_$Apptbuttonvalidation();

  String _onclick = '';
  String get onclick => _$this._onclick;
  set onclick(String onclick) => _$this._onclick = onclick;

  String _label = '';
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  String _onclickData = '';
  String get onclickData => _$this._onclickData;
  set onclickData(String onclickData) => _$this._onclickData = onclickData;

  String _onclickAction = '';
  String get onclickAction => _$this._onclickAction;
  set onclickAction(String onclickAction) =>
      _$this._onclickAction = onclickAction;

  String _onclickWeek ='';
  String get onclickWeek => _$this._onclickWeek;
  set onclickWeek(String onclickWeek) => _$this._onclickWeek = onclickWeek;

  ApptbuttonvalidationBuilder();

  ApptbuttonvalidationBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _onclick = $v.onclick;
      _label = $v.label;
      _onclickData = $v.onclickData;
      _onclickAction = $v.onclickAction;
      _onclickWeek = $v.onclickWeek;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Apptbuttonvalidation other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Apptbuttonvalidation;
  }

  @override
  void update(void Function(ApptbuttonvalidationBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Apptbuttonvalidation build() {
    final _$result = _$v ??
        new _$Apptbuttonvalidation._(
            onclick: onclick,
            label: label,
            onclickData: onclickData,
            onclickAction: onclickAction,
            onclickWeek: onclickWeek);
    replace(_$result);
    return _$result;
  }
}

class _$Payment extends Payment {
  @override
  final String amountlabel;
  @override
  final String amount;
  @override
  final String infos;
  @override
  final String pkAccount;

  factory _$Payment([void Function(PaymentBuilder)? updates]) =>
      (new PaymentBuilder()..update(updates!)).build();

  _$Payment._({required this.amountlabel,required this.amount,required this.infos,required this.pkAccount})
      : super._();

  @override
  Payment rebuild(void Function(PaymentBuilder) updates) =>
      (toBuilder()..update(updates!)).build();

  @override
  PaymentBuilder toBuilder() => new PaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Payment &&
        amountlabel == other.amountlabel &&
        amount == other.amount &&
        infos == other.infos &&
        pkAccount == other.pkAccount;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, amountlabel.hashCode), amount.hashCode), infos.hashCode),
        pkAccount.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Payment')
          ..add('amountlabel', amountlabel)
          ..add('amount', amount)
          ..add('infos', infos)
          ..add('pkAccount', pkAccount))
        .toString();
  }
}

class PaymentBuilder implements Builder<Payment, PaymentBuilder> {
  _$Payment? _$v =_$Payment();

  String _amountlabel ='';
  String get amountlabel => _$this._amountlabel;
  set amountlabel(String amountlabel) => _$this._amountlabel = amountlabel;

  String _amount ='';
  String get amount => _$this._amount;
  set amount(String amount) => _$this._amount = amount;

  String _infos = '';
  String get infos => _$this._infos;
  set infos(String infos) => _$this._infos = infos;

  String _pkAccount ='';
  String get pkAccount => _$this._pkAccount;
  set pkAccount(String pkAccount) => _$this._pkAccount = pkAccount;

  PaymentBuilder();

  PaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _amountlabel = $v.amountlabel;
      _amount = $v.amount;
      _infos = $v.infos;
      _pkAccount = $v.pkAccount;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Payment other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$Payment;
  }

  @override
  void update(void Function(PaymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Payment build() {
    final _$result = _$v ??
        new _$Payment._(
            amountlabel: amountlabel,
            amount: amount,
            infos: infos,
            pkAccount: pkAccount);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
