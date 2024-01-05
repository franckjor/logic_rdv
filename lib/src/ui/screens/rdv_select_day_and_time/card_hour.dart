import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_apointment_time_response.dart';

class CardHourItem extends StatelessWidget {
  final Creneaux creneaux;
  final Function()? onTapForTakeAppointment;

  CardHourItem({
    required this.creneaux,
    required this.onTapForTakeAppointment,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(4),
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 5),
        child: CreneauxItem(
          onTap: onTapForTakeAppointment,
          doctorName: creneaux.doctor!,
          fromHour: creneaux.fromhour!,
          subInfo: creneaux.onclickData!,
        ),
      ),
    );
  }
}

class CreneauxItem extends StatelessWidget {
  final String doctorName;
  final String fromHour;
  final String subInfo;
  final Function()? onTap;
  const CreneauxItem({
    super.key,
    required this.doctorName,
    required this.fromHour,
    required this.onTap,
    required this.subInfo,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: AppColors.primaryColor,
          borderRadius: BorderRadius.circular(4),
        ),
        child: Text(
          '$fromHour',
          textAlign: TextAlign.center,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
            color: Color(0xFFFAFAFA),
          ),
        ),
      ),
    );
  }
}
