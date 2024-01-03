import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/appointment_response.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/buttons/default_elevated_button.dart';

import '../../../common.dart';
import '../OpenTok.dart';

class AppointmentDetailsPageArguments implements PagesArgumentType {
  final CabinetResponse cabinetResponse;
  final PatientResponse patientResponse;
  final AppointmentDataResponse appointmentDataResponse;

  AppointmentDetailsPageArguments({
    this.cabinetResponse,
    this.patientResponse,
    this.appointmentDataResponse,
  });

  @override
  getArguments() {
    return this;
  }
}

class AppointmentDetails extends StatefulWidget {
  final AppointmentDetailsPageArguments arguments;

  AppointmentDetails({required this.arguments});

  @override
  _AppointmentDetailsState createState() => _AppointmentDetailsState();
}

class _AppointmentDetailsState extends State<AppointmentDetails> {
  bool _isTcBtnVisible = false;

  DateFormat format = DateFormat("dd/MM/yy");
  var formatterDate = new DateFormat('dd/MM/yy', 'fr').format(DateTime.now());
  String _rdvDate;
  String _dateOfAppointement;
  DateTime _realyDateOfAppointement;
  List<String> value;
  double _currentTime = toDoubleHour(TimeOfDay.now());
  TimeOfDay _startTime;
  double _rdvTime;

  DateTime _currentDate;

  _getRdvDate() {
    _rdvDate = widget.arguments.appointmentDataResponse.date;
    value = _rdvDate.split(" ");
    _dateOfAppointement = value[1].trim();
    _realyDateOfAppointement =
        DateFormat("dd/MM/yy").parse(_dateOfAppointement);
    print('date: $_realyDateOfAppointement');
    _startTime = TimeOfDay(
        hour: int.parse(
            widget.arguments.appointmentDataResponse.time.split(":")[0]),
        minute: int.parse(
            widget.arguments.appointmentDataResponse.time.split(":")[1]));
    _rdvTime = toDoubleHour(_startTime);

    print('rdv time: $_rdvTime');
  }

  _getStatusOfRdv() {
    if (widget.arguments.appointmentDataResponse.status == 'cancel') {
      return "Annulé";
    } else if (widget.arguments.appointmentDataResponse.status == 'done') {
      return "Honoré";
    } else if (widget.arguments.appointmentDataResponse.status == 'miss') {
      return "Manqué";
    } else if (widget.arguments.appointmentDataResponse.status == 'standby') {
      return "";
    } else if (widget.arguments.appointmentDataResponse.status == '') {
      return "";
    }
  }

  _getStatusOfRdvShowBtnCancel() {
    if (widget.arguments.appointmentDataResponse.status == 'cancel') {
      return false;
    } else if (widget.arguments.appointmentDataResponse.status == 'done') {
      return false;
    } else if (widget.arguments.appointmentDataResponse.status == 'miss') {
      return false;
    } else if (widget.arguments.appointmentDataResponse.status == '') {
      return true;
    }
  }

  // _compareCurrentTime() {
  //   if (_currentTime < _rdvTime &&
  //       _currentDate.isBefore(_realyDateOfAppointement)) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }
  _compareCurrentTime() {
    if (widget.arguments.appointmentDataResponse.past == '0') {
      return true;
    } else {
      return false;
    }
  }

  @override
  void initState() {
    _currentDate = format.parse(formatterDate);
    print('current date formatted: $_currentDate');
    print('current time: $_currentTime');
    _getRdvDate();
    if (widget.arguments.appointmentDataResponse.tokentelecons != '' ||
        widget.arguments.appointmentDataResponse.tokentelecons != null &&
            widget.arguments.appointmentDataResponse.status == '' ||
        widget.arguments.appointmentDataResponse.status == null) {
      _isTcBtnVisible = true;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AdaptativeAppBar(
        title: 'Détails du Rdv',
        leading: DefaultBackButton(),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: widget.arguments.appointmentDataResponse.status !=
                              "cancel" &&
                          _compareCurrentTime()
                      ? Color(0xFF0A1931)
                      : Colors.grey.shade400,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(-5, -5),
                      color: Colors.grey.shade200,
                    ),
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(5, 5),
                      color: Colors.grey.shade200,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Transform.rotate(
                          child: const Icon(
                            Icons.calendar_today,
                            color: Colors.white,
                            size: 14,
                          ),
                          angle: -.5,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          widget.arguments.appointmentDataResponse.date ?? '--',
                          style: TextStyle(
                            fontSize: 13.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.schedule,
                          size: 14,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 6),
                        Text(
                          widget.arguments.appointmentDataResponse.time
                                  .toString() ??
                              '--',
                          style: TextStyle(
                            fontSize: 13.5,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                'Informations du cabinet',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(-5, -5),
                      color: Colors.grey.shade200,
                    ),
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(5, 5),
                      color: Colors.grey.shade200,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.colorPrimary.withOpacity(.5),
                      ),
                      child: const Icon(
                        Icons.gite,
                        color: AppColors.colorWhite,
                        size: 50,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.arguments.cabinetResponse.nom ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.arguments.cabinetResponse.phone ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.arguments.cabinetResponse.city ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.arguments.cabinetResponse.address ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 24),
              const Text(
                'Informations sur le patient',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 15,
                ),
              ),
              const SizedBox(height: 8),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: AppColors.whiteColor,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(-5, -5),
                      color: Colors.grey.shade200,
                    ),
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(5, 5),
                      color: Colors.grey.shade200,
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.colorPrimary.withOpacity(.5),
                      ),
                      child: const Icon(
                        Icons.person,
                        color: AppColors.colorWhite,
                        size: 50,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.arguments.patientResponse.nom ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.arguments.patientResponse.phone ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.arguments.patientResponse.birthdate ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                    const SizedBox(height: 6),
                    Text(
                      widget.arguments.patientResponse.email ?? '',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.grey.shade400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Container(
                padding: EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.redAccent,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(-5, -5),
                      color: Colors.grey.shade200,
                    ),
                    BoxShadow(
                      blurRadius: 10,
                      offset: Offset(5, 5),
                      color: Colors.grey.shade200,
                    ),
                  ],
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Etat du Rdv',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 14,
                        color: Colors.white,
                      ),
                    ),
                    Text(
                      _getStatusOfRdv() ?? '',
                      style: TextStyle(
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 20),
              _compareCurrentTime()
                  ? Visibility(
                      visible: true,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: DefaultElevatedButton(
                          textFieldHeight: 50,
                          text: 'Teleconsultation'.toUpperCase(),
                          onPressed: () {
                            Navigator.popAndPushNamed(
                                context, RouteGenerator.openTok,
                                arguments: TeleconsArgument(
                                    tokentelecon: widget
                                        .arguments
                                        ?.appointmentDataResponse
                                        ?.tokentelecons));
                          },
                        ),
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }
}
/** Container(
    child: Card(
    child: Column(
    children: [
    Container(
    height: 35,
    width: double.infinity,
    padding: EdgeInsets.symmetric(horizontal: 16),
    decoration: BoxDecoration(
    borderRadius: BorderRadius.only(
    topLeft: Radius.circular(12),
    topRight: Radius.circular(12),
    ),
    color:
    widget.arguments.appointmentDataResponse.status !=
    "cancel" &&
    _compareCurrentTime()
    ? Color(0xFF0A1931)
    : Colors.grey,
    ),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
    Row(
    children: [
    Transform.rotate(
    child: Icon(
    Icons.calendar_today,
    color: Colors.white,
    size: 14,
    ),
    angle: -.5,
    ),
    const SizedBox(width: 6),
    Text(
    widget.arguments.appointmentDataResponse
    .date ??
    '--',
    style: TextStyle(
    fontSize: 13.5,
    color: Colors.white,
    ),
    )
    ],
    ),
    Row(
    children: [
    const Icon(
    Icons.schedule,
    size: 14,
    color: Colors.white,
    ),
    const SizedBox(width: 6),
    Text(
    widget.arguments.appointmentDataResponse.time
    .toString() ??
    '--',
    style: TextStyle(
    fontSize: 13.5,
    color: Colors.white,
    ),
    ),
    ],
    )
    ],
    ),
    ),
    Container(
    child: Column(
    children: [
    SizedBox(
    height: 10,
    ),
    Container(
    padding: EdgeInsets.symmetric(horizontal: 20),
    child: Row(
    mainAxisAlignment:
    MainAxisAlignment.spaceBetween,
    children: [
    Text(
    'Etat du Rdv: ',
    style: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    ),
    ),
    Text(
    _getStatusOfRdv() ?? '--',
    style: TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 15,
    ),
    ),
    ],
    ),
    ),
    SizedBox(
    height: 10,
    ),
    Container(
    child: Text(
    "Information du cabinet".toUpperCase(),
    style: TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold),
    ),
    ),
    SizedBox(
    height: 5,
    ),
    Container(
    alignment: Alignment.centerLeft,
    child: ListTile(
    title: Text(
    widget.arguments.cabinetResponse.nom,
    textAlign: TextAlign.end,
    ),
    leading: Text(
    'Nom du cabinet: ',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    Container(
    alignment: Alignment.centerLeft,
    child: ListTile(
    title: Text(
    widget.arguments.cabinetResponse.phone,
    textAlign: TextAlign.end,
    ),
    leading: Text(
    'Téléphone: ',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    Container(
    alignment: Alignment.centerLeft,
    child: ListTile(
    title: Text(
    widget.arguments.cabinetResponse.city,
    textAlign: TextAlign.end,
    ),
    leading: Text(
    'Ville: ',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    Container(
    alignment: Alignment.centerLeft,
    child: ListTile(
    title: Text(
    widget.arguments.cabinetResponse.address,
    textAlign: TextAlign.end,
    ),
    leading: Text(
    'Address: ',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    ],
    ),
    ),
    Container(
    child: Column(
    children: [
    SizedBox(
    height: 10,
    ),
    Container(
    child: Text(
    "Information sur le patient".toUpperCase(),
    style: TextStyle(
    fontSize: 18, fontWeight: FontWeight.bold),
    ),
    ),
    SizedBox(
    height: 5,
    ),
    Container(
    alignment: Alignment.centerLeft,
    child: ListTile(
    title: Text(
    widget.arguments.patientResponse.nom,
    textAlign: TextAlign.end,
    ),
    leading: Text(
    'Nom du patient: ',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    Container(
    alignment: Alignment.centerLeft,
    child: ListTile(
    title: Text(
    widget.arguments.patientResponse.phone,
    textAlign: TextAlign.end,
    ),
    leading: Text(
    'Téléphone: ',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    Container(
    alignment: Alignment.centerLeft,
    child: ListTile(
    title: Text(
    widget.arguments.patientResponse.birthdate,
    textAlign: TextAlign.end,
    ),
    leading: Text(
    'date de naissance: ',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    Container(
    alignment: Alignment.centerLeft,
    child: ListTile(
    title: Text(
    widget.arguments.patientResponse.email,
    textAlign: TextAlign.end,
    ),
    leading: Text(
    'Email: ',
    style: TextStyle(
    fontSize: 15,
    fontWeight: FontWeight.bold),
    ),
    ),
    ),
    ],
    ),
    ),
    ],
    ),
    ),
    ),
    const SizedBox(height: 20),
    _compareCurrentTime()
    ? Visibility(
    visible: _isTcBtnVisible,
    child: Padding(
    padding: const EdgeInsets.symmetric(horizontal: 16),
    child: DefaultElevatedButton(
    textFieldHeight: 50,
    text: 'Teleconsultation'.toUpperCase(),
    onPressed: () {
    Navigator.popAndPushNamed(
    context, RouteGenerator.openTok);
    },
    ),
    ),
    )
    : Container(),
    const SizedBox(height: 10), */
