class ErrorMessage {
  String objectName;
  String field;
  String message;

  ErrorMessage({
    required this.objectName,
    required this.field,
    required this.message,
  });

  ErrorMessage.fromJson(Map<String, dynamic> json)
      : objectName = json['objectName'],
        field = json['field'],
        message = json['message'];
}


class FieldErrors {
  List<ErrorMessage> fieldErrors;

  FieldErrors({required this.fieldErrors});

  FieldErrors.fromJson(Map<String, dynamic> json)
      : fieldErrors = json['fieldErrors'];
}