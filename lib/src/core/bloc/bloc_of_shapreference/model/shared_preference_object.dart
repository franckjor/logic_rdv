class SharePreferenceObject {
  String token;
  String email;
  String phoneNumber;
  String firstName;
  String lastName;
  // String currency;

  SharePreferenceObject({
    required this.token,
    required this.email,
    required this.phoneNumber,
    required this.firstName,
    required this.lastName,
    // this.currency,
  });

  @override
  String toString() {
    return '{'
        '"token": "$token", '
        '"email": "$email",'
        '"phoneNumber": "$phoneNumber",'
        '"lastName": "$lastName",'
        '"firstName": "$firstName"'
        // '"currency": "$currency",'
        '}';
  }

  SharePreferenceObject.fromJson(Map<String, dynamic> json)
      : token = json['token'],
        email = json['email'],
        lastName = json['lastName'],
        firstName = json['firstName'],
        phoneNumber = json['phoneNumber'];
  // currency = json['currency'];
}
