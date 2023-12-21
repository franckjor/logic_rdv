import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class FlutterVonageVideoCall {
  FlutterVonageVideoCall._();
  static const _vonageChannel = const MethodChannel('vonage');

  static Future<void> init({
    required String session,
    required String token,
    required String apiKey,
  }) async {
    assert(session != null);
    assert(token != null);
    assert(apiKey != null);
    try {
      await _vonageChannel.invokeMethod('initVonageVideoCall', {
        "SESSION":
            '2_MX40NzIzMTc1NH5-MTYyMTI4Mjg3NjU3MX41aUpVZldCNWRGQnlDYWc4amNvV2dwYWN-fg',
        "TOKEN":
            'T1==cGFydG5lcl9pZD00NzIzMTc1NCZzaWc9ZmJlOGJjNDM4YzI3NjI1MGNkNzQ0ZDg0MDgzNGEwZDdhODliOTk5YzpzZXNzaW9uX2lkPTJfTVg0ME56SXpNVGMxTkg1LU1UWXlNVEk0TWpnM05qVTNNWDQxYVVwVlpsZENOV1JHUW5sRFlXYzRhbU52VjJkd1lXTi1mZyZjcmVhdGVfdGltZT0xNjIxMjgyOTA4Jm5vbmNlPTAuNDUzNzY3NjAzOTcyNjAyMiZyb2xlPXB1Ymxpc2hlciZleHBpcmVfdGltZT0xNjIxMzA0NTA3JmluaXRpYWxfbGF5b3V0X2NsYXNzX2xpc3Q9',
        "API_KEY": '47231754',
      });
    } on PlatformException catch (e) {
      print("Failed to Make Video Call : '${e.message}'.");
    }
  }
}
