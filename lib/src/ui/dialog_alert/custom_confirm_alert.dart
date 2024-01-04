import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/themes/sizes.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

customConfirmAlert({
  required BuildContext context,
  AlertType? alertType,
  String?  title,
  String?  confirmButtonLabel,
  String?  cancelButtonLabel,
  Function()? onNoAction,
  Function()? closeFunction,
  Function()? onYesAction,
  Widget? content,
}) {
  return Alert(
    context: context,
    type: alertType ?? AlertType.warning,
    title: title,
    content: content ?? Container(),
    closeFunction: closeFunction ?? () => Navigator.pop(context),
    buttons: [
      DialogButton(
        child: Text(
          cancelButtonLabel ?? 'Non',
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
        onPressed: onNoAction ?? () => defaultAction(context),
        width: alertSuccessWidth,
      ),
      DialogButton(
        child: Container(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              confirmButtonLabel ?? 'Oui',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ),
        ),
        onPressed: onYesAction,
        width: alertSuccessWidth,
      ),
    ],
  ).show();
}
