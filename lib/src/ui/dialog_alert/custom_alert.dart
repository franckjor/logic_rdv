import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/ui/themes/sizes.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

customAlert({
  required BuildContext context,
  required AlertType? alertType,
  required String title,
  required String buttonLabel,
  required Function()? action,
  required bool willPop,
  required Widget content,
  bool showCloseIcon = true,
}) {
  return Alert(
    onWillPopActive: willPop ?? false,
    context: context,
    content: content,
    type: alertType,
    closeFunction: () => showCloseIcon ? null : Navigator.pop(context),
    closeIcon:
        showCloseIcon ? const SizedBox.shrink() :  Icon(Icons.close),
    style: AlertStyle(
        titleStyle: TextStyle(
      color: Theme.of(context).primaryColor,
      fontSize: fontSizeS,
      fontWeight: FontWeight.normal,
    )),
    title: title ?? "",
    buttons: [
      DialogButton(
        child: Text(
          buttonLabel ?? 'ok',
          style: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w600,
          ),
        ),
        onPressed: action ?? () => defaultAction(context),
      )
    ],
  ).show();
}

void defaultAction(BuildContext context) {
  Navigator.pop(context);
}

/**
       Alert(
        context: context,
        title: '',
        content: Text("Votre rendez-vous a été pris avec succcès.",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 14,
            )),
        type: AlertType.success,
        closeFunction: null,
        closeIcon: SizedBox.shrink(),
        style: AlertStyle(
          titleStyle: TextStyle(
            color: Theme.of(context).primaryColor,
            fontSize: 14,
            fontWeight: FontWeight.normal,
          ),
        ),
        buttons: [
          DialogButton(
            child: Text(
              'Prendre un nouveau rdv',
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSizeS,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () => Navigator.of(context).pushNamedAndRemoveUntil(
                RouteGenerator.homeScreen, (route) => false),
          ),
          DialogButton(
            color: Colors.redAccent,
            child: Text(
              'Quitter',
              style: TextStyle(
                color: Colors.white,
                fontSize: fontSizeS,
                fontWeight: FontWeight.w600,
              ),
            ),
            onPressed: () => Navigator.of(context)
                .pushReplacementNamed(RouteGenerator.appointmentScreen),
          )
        ],
      ).show();

 */
