import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_apointment_time_response.dart';
import 'package:logic_rdv_v0/src/ui/screens/patient_list_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_select_day_and_time/card_hour.dart';

import '../../../common.dart';

class RdvDialogHour extends StatefulWidget {
  final List<Creneaux>? crenaux;
  final String? currentSession;
  final String? tokenAppointment;
  final String? tokenUser;
  final String? doctorName;

  RdvDialogHour({
    this.crenaux,
    this.tokenUser,
    this.tokenAppointment,
    this.currentSession,
    this.doctorName,
  });

  @override
  _RdvDialogHourState createState() => _RdvDialogHourState();
}

class _RdvDialogHourState extends State<RdvDialogHour> {
  late String onclickData;
  late String onclickAction;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      title: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: "Créneau souhaité pour le ",
          style: const TextStyle(
            fontWeight: FontWeight.w600,
            color: Color(0xFF343A40),
            fontSize: 16,
          ),
          children: [
            TextSpan(
              text:
                  '${widget.crenaux!.first.onclickData!.split(' ')[0]} ${widget.crenaux!.first.onclickData!.split(' ')[1]} avec ',
              style: TextStyle(
                fontWeight: FontWeight.w600,
                color: AppColors.colorPrimary,
                fontSize: 16,
              ),
            ),
            TextSpan(
              text: "${widget.crenaux!.first.doctor}",
              style: const TextStyle(
                fontWeight: FontWeight.w700,
                color: Color(0xFF22577A),
                fontSize: 16,
              ),
            ),
          ],
        ),
      ),
      content: Container(
        width: double.maxFinite,
        child: widget.crenaux!.length != 0
            ? ListView.builder(
                shrinkWrap: true,
                itemCount: widget.crenaux!.length,
                padding: EdgeInsets.zero,
                itemBuilder: (context, ind) {
                  return CardHourItem(
                    creneaux: widget.crenaux![ind],
                    onTapForTakeAppointment: () {
                      setState(
                        () {
                          onclickData = widget.crenaux![ind].onclickData!;
                          onclickAction = widget.crenaux![ind].onclickAction!;
                          Navigator.pop(
                            context,
                            GetPatientPageArguments(
                              session: widget.currentSession,
                              data: onclickData,
                              action: onclickAction,
                              source: 'rdv',
                              doctorName: widget.doctorName,
                              tokenappointment: widget.tokenAppointment,
                              tokenDoctor: widget.tokenAppointment,
                              tokenuser: widget.tokenUser,
                            ),
                          );
                        },
                      );
                    },
                  );
                },
              )
            : const Text(
                'Aucun crénaux disponible pour le moment.',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 15,
                ),
              ),
      ),
    );
  }
}
