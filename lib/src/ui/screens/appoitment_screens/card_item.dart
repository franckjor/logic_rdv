import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/appointment_response.dart';
import 'package:logic_rdv_v0/src/ui/themes/colors.dart';

class CardItem extends StatefulWidget {
  final CabinetResponse? cabinetResponse;
  final PatientResponse? patientResponse;
  final AppointmentDataResponse? appointmentDataResponse;
  final Function()? onCancelAppointmentHandler;

  CardItem({
    this.cabinetResponse,
    this.patientResponse,
    this.appointmentDataResponse,
    this.onCancelAppointmentHandler,
  });

  @override
  _CardItemState createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  DateFormat format = DateFormat("dd/MM/yy");
  var formatterDate = new DateFormat('dd/MM/yy', 'fr').format(DateTime.now());
  late String _rdvDate;
  late String _dateOfAppointement;
  late DateTime _realyDateOfAppointement;
  late List<String> value;
  bool _isTcBtnVisible = false;
  late DateTime _currentDate;
  late TimeOfDay _startTime;
  late double _rdvTime;

  _getRdvDate() {
    _rdvDate = widget.appointmentDataResponse!.date;
    value = _rdvDate.split(" ");
    _dateOfAppointement = value[1].trim();
    _realyDateOfAppointement =
        DateFormat("dd/MM/yy").parse(_dateOfAppointement);
    print('date: $_realyDateOfAppointement');
    _startTime = TimeOfDay(
        hour: int.parse(widget.appointmentDataResponse!.time.split(":")[0]),
        minute: int.parse(widget.appointmentDataResponse!.time.split(":")[1]));
    _rdvTime = toDoubleHour(_startTime);

    print('rdv time: $_rdvTime');
    _compareCurrentTime();
  }

  // _compareCurrentTime() {
  //   if (_currentTime < _rdvTime &&
  //       _currentDate.isBefore(_realyDateOfAppointement)) {
  //     _enableRdv = true;
  //   } else {
  //     _enableRdv = false;
  //   }
  // }

  bool _compareCurrentTime() {
    if (widget.appointmentDataResponse!.past == '0') {
      return true;
    } else {
      return false;
    }
  }

  _getStatusOfRdv() {
    if (widget.appointmentDataResponse!.status == 'cancel') {
      return "Annulé";
    } else if (widget.appointmentDataResponse!.status == 'done') {
      return "Honoré";
    } else if (widget.appointmentDataResponse!.status == 'miss') {
      return "Manqué";
    } else if (widget.appointmentDataResponse!.status == 'standby') {
      return "";
    } else if (widget.appointmentDataResponse!.status == '') {
      return "";
    }
  }

  _getStatusOfRdvShowBtnCancel() {
    if (widget.appointmentDataResponse!.status == 'cancel') {
      return false;
    } else if (widget.appointmentDataResponse!.status == 'done') {
      return false;
    } else if (widget.appointmentDataResponse!.status == 'miss') {
      return false;
    } else if (widget.appointmentDataResponse!.status == '') {
      return true;
    }
  }

  @override
  void initState() {
    _currentDate = format.parse(formatterDate);
    print('current date formatted: $_currentDate');
    _getRdvDate();
    super.initState();
    if (widget.appointmentDataResponse!.tokentelecons != '' &&
        widget.appointmentDataResponse!.past != '1') {
      _isTcBtnVisible = true;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Container(
        margin: EdgeInsets.only(bottom: 12),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(12),
          border: Border.all(
            width: 1,
            color: AppColors.colorHintText,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.white,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
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
                          widget.appointmentDataResponse!.status != "cancel" &&
                                  _compareCurrentTime()
                              ? Colors.blue
                              : Colors.grey.shade400,
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
                              widget.appointmentDataResponse!.date ,
                              style: TextStyle(
                                fontSize: 13.5,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                        Row(
                          children: [
                             Icon(
                              Icons.schedule,
                              size: 14,
                              color: Colors.white,
                            ),
                            const SizedBox(width: 6),
                            Text(
                              widget.appointmentDataResponse!.time.toString(),
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
                  ListTile(
                    leading: Material(
                      elevation: 2,
                      color: Colors.transparent,
                      shadowColor: AppColors.primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage: AssetImage(
                          'assets/images/medecin.png',
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ),
                    title: Text(
                      widget.appointmentDataResponse!.avec ,
                      style: TextStyle(
                        fontSize: 13.5,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      widget.appointmentDataResponse!.label,
                      style: TextStyle(
                        fontSize: 13.5,
                      ),
                    ),
                    trailing: _compareCurrentTime()
                        ? Container(
                            height: 28,
                            child: OutlinedButton(
                              onPressed: widget.onCancelAppointmentHandler,
                              child: const Text(
                                'Annuler',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.black,
                                ),
                              ),
                              style: OutlinedButton.styleFrom(
                                primary: Colors.red,
                                shadowColor: Colors.blue,
                                side: BorderSide(color: Colors.red, width: .5),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(2),
                                ),
                              ),
                            ),
                          )
                        : null,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        height: .25,
                        width: double.infinity,
                        color: Colors.grey,
                      ),
                      // Afficher uniquement si le rdv est passé ou annulé
                      TextButton(
                        onPressed: () {
                          Navigator.of(context)
                              .pushNamed(RouteGenerator.homeScreen);
                        },
                        child: Text(
                          'Reprendre un Rdv'.toUpperCase(),
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          ),
                        ),
                        style: TextButton.styleFrom(
                          primary: AppColors.primaryColor,
                          padding: const EdgeInsets.symmetric(
                              vertical: 4, horizontal: 8),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      ),
                    ],
                  ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     'Informations sur le patient',
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: 14,
                  //       color: const Color(0xFF191A19),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  //   child: Row(
                  //     children: [
                  //        Icon(Icons.person, size: 20),
                  //       const SizedBox(width: 8),
                  //       Text(
                  //         widget.patientResponse!.nom ?? '',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w600,
                  //           fontSize: 13.5,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  //   child: Row(
                  //     children: [
                  //        Icon(Icons.phone, size: 20),
                  //       const SizedBox(width: 8),
                  //       Text(
                  //         widget.patientResponse!.phone ?? '--',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w600,
                  //           fontSize: 13.5,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  //   child: Row(
                  //     children: [
                  //        Icon(Icons.email, size: 20),
                  //       const SizedBox(width: 8),
                  //       Text(
                  //         widget.patientResponse!.email ?? '--',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w600,
                  //           fontSize: 13.5,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   height: .5,
                  //   width: double.infinity,
                  //   color: Colors.grey,
                  // ),
                  // Padding(
                  //   padding: const EdgeInsets.all(8.0),
                  //   child: Text(
                  //     'Informations sur le cabinet',
                  //     style: TextStyle(
                  //       fontWeight: FontWeight.w600,
                  //       fontSize: 14,
                  //       color: const Color(0xFF191A19),
                  //     ),
                  //   ),
                  // ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  //   child: Row(
                  //     children: [
                  //        Icon(Icons.gite, size: 20),
                  //       const SizedBox(width: 8),
                  //       Text(
                  //         widget.cabinetResponse!.nom ?? '--',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w600,
                  //           fontSize: 13.5,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  //   child: Row(
                  //     children: [
                  //        Icon(Icons.phone, size: 20),
                  //       const SizedBox(width: 8),
                  //       Text(
                  //         widget.cabinetResponse!.phone ?? '--',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w600,
                  //           fontSize: 13.5,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  //   child: Row(
                  //     children: [
                  //        Icon(Icons.contact_mail, size: 20),
                  //       const SizedBox(width: 8),
                  //       Text(
                  //         widget.cabinetResponse!.city ?? '--',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w600,
                  //           fontSize: 13.5,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Padding(
                  //   padding:
                  //       const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                  //   child: Row(
                  //     children: [
                  //        Icon(Icons.location_on, size: 20),
                  //       const SizedBox(width: 8),
                  //       Text(
                  //         widget.cabinetResponse!.address ?? '--',
                  //         style: TextStyle(
                  //           fontWeight: FontWeight.w600,
                  //           fontSize: 13.5,
                  //         ),
                  //       ),
                  //     ],
                  //   ),
                  // ),
                  // Container(
                  //   height: .25,
                  //   width: double.infinity,
                  //   color: Colors.grey,
                  // ),

                  Visibility(
                    visible: _isTcBtnVisible,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: ElevatedButton.icon(
                        onPressed: () => Navigator.pushNamed(
                            context, RouteGenerator.openTok),
                        icon:  Icon(
                          Icons.videocam,
                          size: 20,
                        ),
                        label: Text(
                          'Téléconsultation',
                          style: TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        style: ElevatedButton.styleFrom(
                          primary: AppColors.primaryColor,
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Visibility(
                    visible: _getStatusOfRdv() != "",
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12),
                          child: Row(
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
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
/*
class _CustomDivider extends StatelessWidget {
  const _CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Divider(
      color: AppColors.colorHintText,
      height: 4,
    );
  }
}

class _ContactButton extends StatelessWidget {
  final String iconPath;
  final String label;
  final Function onTap;
  const _ContactButton({super.key, required this.iconPath,
    required this.label,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 70,
        width: 70,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: AppColors.scaffoldBackgroundColor,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(
              iconPath,
              height: 25,
            ),
            const SizedBox(height: 4),
            Text(
              label,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: Color(0xFF1c2c4e),
              ),
            ),
          ],
        ),
      ),
    );
  }
}*/
/**
    void _openGoogleMapApp({double lat, double lng}) async {
    String googleUrl =
    'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    if (await canLaunch(googleUrl)) {
    await launch(googleUrl);
    } else {
    throw 'Could not open the map.';
    }
    }

    void _makeCall(
    String phone,
    ) async {
    await launch("tel://$phone");
    }

    void _openWhatsApp({
    String phone,
    String message,
    }) async {
    String url() {
    if (isAndroid || isWeb) {
    return "https://wa.me/$phone/?text=${Uri.parse(message)}";
    } else {
    return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}";
    }
    }

    if (await canLaunch(url())) {
    await launch(url());
    } else {
    throw 'Could not launch ${url()}';
    }
    }

    _getDate(String dateOfAppointement) {
    List<String> value = [];
    value = dateOfAppointement.split(" ");
    DateFormat format = DateFormat("dd/MM/yy");
    var myServerDate = format.parse(value[1]);
    return myServerDate;
    }
 */
