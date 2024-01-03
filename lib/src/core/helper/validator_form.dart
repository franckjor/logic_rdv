import 'package:flutter/material.dart';

String verifyEmpty(String value, {String errorMessage}) {
  return value.trim().isEmpty
      ? (errorMessage ?? ('Ce champ est obligatoire'))
      : null;
}

double toDoubleHour(TimeOfDay myTime) => myTime.hour + myTime.minute / 60.0;

String verifyPasswordConfirm(String value1, String value2) {
  if (value1.isEmpty) {
    return "Renseignez le mot de passe";
  } else if (value2.isEmpty) {
    return "Renseignez le mot de passe";
  } else if (value2 != value1) {
    return "Les mots de passe ne correspondent pas";
  } else {
    return null;
  }
}

String verifySpace(String value, {String errorMessage}) {
  if (value.trim().isEmpty)
    return ('empty');
  else if (value.contains(' '))
    return ('do_not_contains_space');
  else
    return null;
}

String verifyUserName(String value) {
  if (value.trim().isEmpty)
    return ('validation_error.empty');
  else if (value.trim().length < 3)
    return ('length_user_name');
  else
    return null;
}

String verifyValue(String value, String item) {
  if (value.isEmpty)
    return ('validation_error.empty');
  else if (value.length > 10)
    return item + ('length_text_form_field.lower');
  else
    return null;
}

String verifyMobileNumber(String value) {
  if (value.isEmpty)
    return ("validation_error.empty");
  else if (value.length < 9 || value.length > 12)
    return ('length_phone');
  else
    return null;
}

String verifyEmailSyntaxe(String value) {
  Pattern pattern =
      r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
  RegExp regex = new RegExp(pattern);
  if (value.isNotEmpty) {
    if (!regex.hasMatch(value.trim())) return ('invalid_email');
  }
  return null;
}

String verifyDate(DateTime data1, DateTime data2) {
  if (data1 == null)
    return ('validation_error.empty');
  else if (data1 == data2 && data1.isAfter(data2))
    return ('birth_date_to_be_lower_than_current');
  else
    return null;
}

String verifyBirthDate(DateTime data1) {
  DateTime data2 = DateTime.now();
  if (data1 == null)
    return ('validation_error.empty');
  else if (data1 == data2 && data1.isAfter(data2))
    return ('birth_date_to_be_lower_than_current');
  else
    return null;
}

String verifyPassword(String value) {
  if (value.isEmpty)
    return ('validation_error.password_required');
  else if (value.contains(' '))
    return ('validation_error.password_space_is_forbidden');
  else if (value.length < 5)
    return ('validation_error.password_invalid_length');
  else
    return null;
}

String verifyConfirmationPassword(String value, String passwordValue) {
  String error = verifyPassword(value);
  if (error == null) {
    if (value != passwordValue)
      return ('validation_error.passwords_not_equal');
    else
      return null;
  }
  return error;
}

String verifyPhoneNumber(String value) {
  Pattern pattern = r'^\+[+]?[0-9]{3}-?[0-9]{6,12}$';
  RegExp regex = new RegExp(pattern);
  if (value.isEmpty)
    return ('validation_error.empty');
  else if ((value.length < 13) && (!regex.hasMatch(value)))
    return ('phone.phone_number_small');
  else
    return null;
}

String verifyValueIfisNotNull(String value) {
  if (value.isEmpty) {
    return ('validation_error.empty');
  } else {
    return null;
  }
}

fieldFocusChange(
    BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
  currentFocus.unfocus();
  FocusScope.of(context).requestFocus(nextFocus);
}
