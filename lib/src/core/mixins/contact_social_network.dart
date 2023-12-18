// import 'dart:io';
//
// import 'package:location/location.dart';
// import 'package:url_launcher/url_launcher.dart';
// import 'package:flutter/foundation.dart' as foundation;
// import '../../common.dart';
//
// bool get isAndroid =>
//     foundation.defaultTargetPlatform == TargetPlatform.android;
//
// bool get isWeb => foundation.kIsWeb;
//
// mixin ContactSocialNetWork {
//   static void openWhatsApp(
//     String phone,
//     String message,
//   ) async {
//     String url() {
//       if (isAndroid || isWeb) {
//         return "https://wa.me/$phone/?text=${Uri.parse(message)}";
//       } else {
//         return "https://api.whatsapp.com/send?phone=$phone=${Uri.parse(message)}";
//       }
//     }
//
//     if (await canLaunch(url())) {
//       await launch(url());
//     } else {
//       throw 'Could not launch ${url()}';
//     }
//   }
//
//   static void sendMesage(
//     String phone,
//     String message,
//   ) async {
//     if (isAndroid || isWeb) {
//       final uri = 'sms:$phone?body=$message';
//       await launch(uri);
//     } else if (Platform.isIOS) {
//       final uri = 'sms:$phone&body=$message';
//       await launch(uri);
//     }
//   }
//
//   static void makeCall(
//     String phone,
//   ) async {
//     await launch("tel://$phone");
//   }
//
//   static Future<void> displayLocation(BuildContext context) async {
//     Location location = Location();
//
//     bool _serviceEnabled;
//     PermissionStatus _permissionGranted;
//     LocationData _locationData;
//
//     _serviceEnabled = await location.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await location.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }
//
//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }
//
//     // _locationData = await location.getLocation().then(
//     //       (value) async => await Navigator.of(context).push(
//     //         MaterialPageRoute(
//     //             builder: (context) => const DoctorLocationScreen(),
//     //             fullscreenDialog: true),
//     //       ),
//     //     );
//
//     print(_locationData.latitude);
//     print(_locationData.longitude);
//   }
// }
