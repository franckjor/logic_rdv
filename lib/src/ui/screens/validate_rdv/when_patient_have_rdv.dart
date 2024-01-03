import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/appointment_function/appointment_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/appointment.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/selected_patient_response_for_rdv.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_confirm_alert.dart';
import 'package:logic_rdv_v0/src/ui/screens/validate_rdv/widget/custom_appts_item.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class TokenAppoitment {
  String tokenApp;

  TokenAppoitment({this.tokenApp});
}

class WhenPatientHaveRdv extends StatefulWidget {
  final SelectedPatientResponseForRdv selectedPatientResponseForRdv;
  final String tokenUser;
  final Function onPressedContinueApp;

  WhenPatientHaveRdv({
    this.selectedPatientResponseForRdv,
    this.tokenUser,
    this.onPressedContinueApp,
  });

  @override
  _WhenPatientHaveRdvState createState() => _WhenPatientHaveRdvState();
}

class _WhenPatientHaveRdvState extends State<WhenPatientHaveRdv> {
  TokenAppoitment _mytoken;
  int _currentIndex;
  List<Appts> _myApptsList = [];
  List<Appts> _myCancelApptsList = [];
  @override
  void initState() {
    _myApptsList = widget
        .selectedPatientResponseForRdv.data.data.apptsinprogress.appts
        .toList();
    _myCancelApptsList = widget
        .selectedPatientResponseForRdv.data.data.apptsinprogress.appts
        .toList();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<AppointmentBloc, AppointmentState>(
            listener: (context, state) {
          if (state is CancelAppointmentLoadingSuccess) {
            _myApptsList.clear();
            customAlert(
                context: context,
                alertType: AlertType.success,
                content: const Text(
                  "Votre rendez-vous a été annulé. Vous pouvez prendre un nouveau rdv.",
                  style: TextStyle(
                    fontSize: 14,
                  ),
                ),
                action: () {
                  // _myApptsList.removeAt(_currentIndex);
                  setState(() {
                    _myCancelApptsList.removeWhere(
                        (element) => element.token == _mytoken.tokenApp);
                    _myApptsList = _myCancelApptsList;
                    Navigator.pop(context);
                  });
                });
          } else if (state is AppointmentFailure) {
            if (state.error == messageErrorTokenInvalid ||
                state.error == messageErrorTokenExpired) {
              customAlert(
                willPop: true,
                alertType: AlertType.info,
                context: context,
                action: () {
                  Navigator.pushNamedAndRemoveUntil(
                      context, RouteGenerator.loginScreen, (route) => false);
                },
                content: Container(
                  child: Text(
                    "Votre session a expiré. Veuillez vous reconnecter.",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
              );
            } else {
              flushBarError(state.error, context);
            }
          }
        })
      ],
      child: BlocBuilder<AppointmentBloc, AppointmentState>(
          builder: (context, state) {
        return Container(
          child: Column(
            children: [
              // Container(
              //   padding: const EdgeInsets.only(top: 16),
              //   alignment: Alignment.center,
              //   child: Text(
              //     widget
              //         .selectedPatientResponseForRdv.data.data.messagenbperson,
              //     style: const TextStyle(
              //       color: Color(0xFF7C8B88),
              //     ),
              //   ),
              // ),
              Container(
                padding:
                    const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
                alignment: Alignment.center,
                child: Text(
                  widget.selectedPatientResponseForRdv.data.data.apptsinprogress
                      .message,
                  textAlign: TextAlign.justify,
                  style: const TextStyle(
                    color: AppColors.blackColor,
                  ),
                ),
              ),
              const SizedBox(height: 12),
              Center(
                child: Container(
                  height: 36,
                  decoration: BoxDecoration(
                    color: AppColors.colorPrimary,
                    borderRadius: BorderRadius.circular(4),
                  ),
                  child: TextButton(
                    onPressed: widget.onPressedContinueApp,
                    child: Text(
                      'Poursuivre la prise de rdv'.toUpperCase(),
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 11.5,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 8),
              Expanded(
                child: Container(
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _myApptsList.length,
                    padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
                    itemBuilder: (context, i) => CustomApptsItem(
                      appts: _myApptsList[i],
                      onCancelAppointmentHandler: () {
                        _mytoken =
                            TokenAppoitment(tokenApp: _myApptsList[i].token);
                        customConfirmAlert(
                          context: context,
                          content: const Text(
                            "Êtes-vous sûr de vouloir annuler ce rendez-vous ?",
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 16,
                            ),
                          ),
                          title: "",
                          onYesAction: () {
                            cancelAppointment(
                              context: context,
                              tokenUser: widget.tokenUser,
                              tokenAppointment: _myApptsList[i].token,
                            );
                          },
                        );
                      },
                    ),
                  ),
                ),
              )
            ],
          ),
        );
      }),
    );
  }
}
