import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/selected_patient_response_for_rdv.dart';

class CustomApptsItem extends StatelessWidget {
  final Function()? onCancelAppointmentHandler;
  final Appts appts;

  CustomApptsItem({
    required this.onCancelAppointmentHandler,
    required this.appts,
  });

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
                      color: AppColors.primaryColor,
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
                              appts.date ?? '--',
                              style: TextStyle(
                                fontSize: 13.5,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
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
                      appts.doctor ?? '--',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    subtitle: Text(
                      appts.label ?? '--',
                      style: TextStyle(
                        fontSize: 14,
                      ),
                    ),
                    trailing: Container(
                      height: 34,
                      child: OutlinedButton(
                        onPressed: onCancelAppointmentHandler,
                        child: const Text('Annuler'),
                        style: OutlinedButton.styleFrom(
                          primary: Colors.red,
                          shadowColor: Colors.blue,
                          side: BorderSide(color: Colors.red, width: .5),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                      ),
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
