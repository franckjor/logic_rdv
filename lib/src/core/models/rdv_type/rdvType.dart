class RdvType {
  String type;
  String message;
  String appointment;
  String stripeClientSecret;
  String session;
  String onclickAction;
  String onclickData;

  RdvType({
    required this.type,
    required this.message,
    required this.session,
    required this.onclickData,
    required this.onclickAction,
    required this.appointment,
    required this.stripeClientSecret,
  });
  
}
