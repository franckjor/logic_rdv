import 'dart:async';

import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/appointment_function/create_appointment_function.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_apointment_time_response.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CardDateItem extends StatelessWidget {
  final DataTimeRdv? dataTimeRdv;
  final BuildContext? contextTimer;
  final String? currentSession;
  final String? tokenAppointment;
  final String? tokenUser;
  final String? onClickMessage;
  final Function(String)? dataFunction;
  final Function(String)? actionFunction;

  CardDateItem(
      {this.dataTimeRdv,
      this.contextTimer,
      this.currentSession,
      this.tokenAppointment,
      this.dataFunction,
      this.onClickMessage,
      this.actionFunction,
      this.tokenUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                dataTimeRdv!.label,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 2),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      dataTimeRdv!.label2,
                      style: TextStyle(
                        color: Colors.blueAccent,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(width: 12),
          if (dataTimeRdv!.creneaux.isNotEmpty)
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    children: dataTimeRdv!.creneaux
                        .map(
                          (c) => _Hour(
                            actionFunction: actionFunction!,
                            dataFunction: dataFunction!,
                            hour: c.fromhour,
                            doctorName: c.doctor,
                            context: contextTimer!,
                            action: c.onclickAction,
                            currentSession: currentSession!,
                            data: c.onclickData,
                            tokenAppointment: tokenAppointment!,
                            tokenUser: tokenUser!,
                            onClickMessage: c.onclickMessage,
                          ),
                        )
                        .toList(),
                  ),
                ),
              ),
            ),
          if (dataTimeRdv!.message.isNotEmpty)
            Expanded(
              child: Container(
                padding: const EdgeInsets.all(8),
                color: const Color(0xFFebebeb),
                child: Center(
                  child: Text(
                    '${dataTimeRdv!.message}',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF7c8B88),
                    ),
                  ),
                ),
              ),
            )
        ],
      ),
    );
  }
}

class _Hour extends StatefulWidget {
  final String hour;
  final String doctorName;
  final String action;
  final String data;
  final String currentSession;
  final String tokenAppointment;
  final String tokenUser;
  final String onClickMessage;
  final Function()? onTap;
  final BuildContext context;
  final Function(String) dataFunction;
  final Function(String) actionFunction;

  const _Hour({
    Key? key,
    required this.hour,
    required this.doctorName,
    required this.context,
    required this.tokenUser,
    required this.tokenAppointment,
    required this.currentSession,
    required this.data,
    required this.action,
    required this.onClickMessage,
    required this.dataFunction,
    required this.actionFunction,
    this.onTap,
  }) : super(key: key);

  @override
  State<_Hour> createState() => _HourState();
}

class _HourState extends State<_Hour> {
  _addDataToSF(String key, String value) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(key, value);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (widget.onClickMessage != "") {
          customAlert(
            alertType: AlertType.info,
            context: context,
            content: Text(
              widget.onClickMessage,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.normal),
            ), title: '', buttonLabel: '', action: () {  }, willPop: false,
          );
        } else {
          widget.dataFunction(widget.data);
          widget.actionFunction(widget.action);
          rdvTypeState(
            context: context,
            action: widget.action,
            data: widget.data,
            session: widget.currentSession,
            tokenAppointment: widget.tokenAppointment,
            tokenUser: widget.tokenUser, week: '',
          );
        }
      },
      child: Container(
        padding: const EdgeInsets.all(4),
        margin: const EdgeInsets.only(right: 4),
        decoration: BoxDecoration(
            border: Border.all(
          width: 1,
          color: Color(0xFF7C8B88),
        )),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              widget.hour,
              style: TextStyle(
                fontSize: 13,
                color: Color(0xFF7C8B88),
              ),
            ),
            const SizedBox(height: 1),
            Text(
              widget.doctorName,
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

/** Container(
    height: 40,
    width: double.infinity,
    child: ListView.builder(
    shrinkWrap: true,
    scrollDirection: Axis.horizontal,
    itemCount:
    _rdvTimeData[ind].creneaux.length,
    itemBuilder: (context, i) {
    return Padding(
    padding:
    const EdgeInsets.symmetric(
    horizontal: 4),
    child: Chip(
    backgroundColor: Colors.green,
    label: Text(
    _rdvTimeData[ind]
    .creneaux[i]
    .fromhour,
    style: const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 14,
    color: Colors.white,
    ),
    ),
    ),
    );
    },
    ),
    )

 */
