import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/ui/themes/colors.dart';

class EmptyApointmentWidget extends StatelessWidget {
  const EmptyApointmentWidget({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 24, left: 12, right: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // Container(child: Center(child: CircularProgressIndicator())),
          Transform.rotate(
            angle: -.2,
            child: Icon(
              Icons.calendar_today,
              size: 50,
              color: Colors.grey.shade500,
            ),
          ),
          const SizedBox(height: 24),
          Text(
            "Vous n'avez pas de rendez-vous à venir pour l'instant.",
            textAlign: TextAlign.center,
            style: TextStyle(),
          ),
          const SizedBox(height: 12),
          TextButton(
            onPressed: () {},
            child: Text(
              'Prendre un rendez-vous'.toUpperCase(),
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.primaryColor,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
