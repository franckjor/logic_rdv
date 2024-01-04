// ignore_for_file: missing_return

import 'package:animations/animations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:universal_io/io.dart';
//import 'package:screen/screen.dart';

import 'dart:async';
import 'package:wakelock/wakelock.dart';

class GetCredentialsTokboxPageArguments implements PagesArgumentType {
  final String? API_KEY;
  final String? SESSION_ID;
  final String? TOKEN;
  final String? TOKENTELECONS;
  final String? Date;
  final String? Doctor;
  final String? Patient;

  GetCredentialsTokboxPageArguments(
      {this.API_KEY,
      this.SESSION_ID,
      this.TOKENTELECONS,
      this.TOKEN,
      this.Date,
      this.Doctor,
      this.Patient});

  @override
  getArguments() {
    return this;
  }
}

class TeleconsultationScreen extends StatefulWidget {
  final GetCredentialsTokboxPageArguments arguments;

  TeleconsultationScreen({required this.arguments});

  @override
  _TeleconsultationScreenState createState() => _TeleconsultationScreenState();
}

class _TeleconsultationScreenState extends State<TeleconsultationScreen> {
  SdkState _sdkState = SdkState.WAIT;
  bool _publishAudio = true;
  bool _publishVideo = true;
  //variable timer
  bool isvisible = true;
  bool isnotvisible = false;
  bool startispressed = true;
  bool stoptispressed = true;
  bool resettispressed = true;
  String time = "00:00:00";
  var swatch = Stopwatch();
  final dur = const Duration(seconds: 1);

  static const platformMethodChannel = const MethodChannel('com.vonage');

//function timer
  void startTimer() {
    Timer(dur, keeprunning);
  }

  void keeprunning() {
    if (swatch.isRunning) {
      startTimer();
    }
    setState(() {
      time = swatch.elapsed.inHours.toString().padLeft(2, '0') +
          ":" +
          (swatch.elapsed.inMinutes % 60).toString().padLeft(2, '0') +
          ":" +
          (swatch.elapsed.inSeconds % 60).toString().padLeft(2, '0');
    });
  }

  void startwatch() {
    setState(() {
      isvisible = !isvisible;
      isnotvisible = !isnotvisible;
      stoptispressed = false;
      startispressed = false;
    });
    swatch.start();
    startTimer();
  }

  void stopwatch() {
    setState(() {
      stoptispressed = true;
      resettispressed = false;
      isvisible = !isvisible;
      isnotvisible = !isnotvisible;
    });
    swatch.stop();
  }

  void resetwatch() {
    setState(() {
      startispressed = true;
      resettispressed = true;
    });
    swatch.reset();
    time = "00:00:00";
  }

  String getTimer(String value) {
    if (value == "stop") {
      resetwatch();
      return "En attente de votre interlocuteur...";
    } else {
      startwatch();
      return "Teleconsultation en cours " + widget.arguments.Doctor!;
    }
  }
//end function timer

  Future<dynamic> methodCallHandler(MethodCall methodCall) async {
    switch (methodCall.method) {
      case 'updateState':
        {
          setState(() {
            var arguments = 'SdkState.${methodCall.arguments}';
            _sdkState = SdkState.values.firstWhere((v) {
              return v.toString() == arguments;
            });
          });
        }
        break;
      default:
        throw MissingPluginException('notImplemented');
    }
  }

  Future<void> _initSession() async {
    await requestPermissions();

    dynamic params = {
// 'apiKey':'47244724',
// 'sessionId': '1_MX40NzI0NDcyNH5-MTY0NDc1MTY1OTcwMH4xZ0cxOVF4Y01kdDlTdkF5M0tPSU10TER-fg',
// 'token': "T1==cGFydG5lcl9pZD00NzI0NDcyNCZzaWc9MWI4NmI1MmIyMGNjMjc5MWVlOWJmNGMwZGUyODVkMzE2ZjI2MGJlMDpzZXNzaW9uX2lkPTFfTVg0ME56STBORGN5Tkg1LU1UWTBORGMxTVRZMU9UY3dNSDR4WjBjeE9WRjRZMDFrZERsVGRrRjVNMHRQU1UxMFRFUi1mZyZjcmVhdGVfdGltZT0xNjQ0NzUxNzAwJm5vbmNlPTAuMDk1MDk0NzU5NTMzMDYzMTImcm9sZT1wdWJsaXNoZXImZXhwaXJlX3RpbWU9MTY0NzM0MzY5OCZpbml0aWFsX2xheW91dF9jbGFzc19saXN0PQ==",

      'apiKey': widget.arguments.API_KEY,
      'sessionId': widget.arguments.SESSION_ID,
      'token': widget.arguments.TOKEN
    };

    try {
      await platformMethodChannel.invokeMethod('initSession', params);
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<void> _closeSession() async {
    await requestPermissions();
    try {
      await platformMethodChannel.invokeMethod('closeSession');
      Navigator.of(context).pushNamed(RouteGenerator.appointmentScreen);
    } on PlatformException catch (e) {
      print(e);
    }
  }

  Future<void> requestPermissions() async {
    await [
      Permission.microphone,
      Permission.camera,
    ].request();
  }

  Future<void> _swapCamera() async {
    try {
      await platformMethodChannel.invokeMethod('swapCamera');
    } on PlatformException catch (e) {
      throw e;
    }
  }

  Future<void> _toggleAudio() async {
    setState(() {
      _publishAudio = !_publishAudio;
    });
    _updateView();
    dynamic params = {'publishAudio': _publishAudio};

    try {
      await platformMethodChannel.invokeMethod('toggleAudio', params);
    } on PlatformException catch (e) {
      throw e;
    }
  }

  Future<void> _toggleVideo() async {
    setState(() {
      _publishVideo = !_publishVideo;
    });
    _updateView();

    dynamic params = {'publishVideo': _publishVideo};

    try {
      await platformMethodChannel.invokeMethod('toggleVideo', params);
    } on PlatformException catch (e) {
      throw e;
    }
  }

  @override
  void initState() {
    //Screen.keepOn(true);
    Wakelock.enable();
    super.initState();
    try {
      platformMethodChannel.setMethodCallHandler(methodCallHandler);
      _initSession();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
            onPressed: () {
              Navigator.pushReplacementNamed(
                  context, RouteGenerator.appointmentScreen);
            },
            icon: Icon(Icons.arrow_back_ios)),
        centerTitle: true,
        titleSpacing: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.lock,
              color: _sdkState == SdkState.LOGGED_OUT
                  ? Colors.transparent
                  : Colors.grey.shade400,
              size: 18,
            ),
            const SizedBox(width: 8),
            Text(
              _sdkState == SdkState.LOGGED_OUT ? "" : 'Chiffré de bout en bout',
              style: TextStyle(color: Colors.grey.shade400, fontSize: 13.5),
            ),
          ],
        ),
      ),
      body: WillPopScope(
        onWillPop: () async {
          try {
            if (_sdkState != SdkState.LOGGED_OUT) {
              showModal(
                context: context,
                configuration: FadeScaleTransitionConfiguration(),
                builder: (context) => AlertDialog(
                  title: const Text('Quitter'),
                  content:
                      const Text('Voulez-vous quitter la téléconsultation ?'),
                  actions: [
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _sdkState = SdkState.LOGGED_OUT;
                        });
                        _closeSession();
                        Navigator.of(context).pushNamedAndRemoveUntil(
                            RouteGenerator.appointmentScreen, (route) => false);
                      },
                      child: Text('OUI'),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pop(),
                      child: Text('NON'),
                    )
                  ],
                ),
              );
            } else {
              setState(() {
                _sdkState = SdkState.LOGGED_OUT;
              });
              _closeSession();
              Navigator.of(context).pushNamedAndRemoveUntil(
                  RouteGenerator.appointmentScreen, (route) => false);
            }
          } catch (e) {
            print(e);
          }
          return false;
        },
        child: Stack(
          fit: StackFit.expand,
          children: [
            Container(
              decoration: BoxDecoration(color: Color.fromARGB(255, 59, 57, 57)),
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    _updateView(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _updateView() {
    if (_sdkState == SdkState.WAIT) {
      return const Center(
        child: CircularProgressIndicator(),
      );
    } else if (_sdkState == SdkState.LOGGED_IN ||
        _sdkState == SdkState.ONE_USER) {
      return Stack(
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: PlatformViewLink(
              viewType: 'opentok-video-container', // custom platform-view-type
              surfaceFactory:
                  (BuildContext context, PlatformViewController controller) {
                return AndroidViewSurface(
                  controller: controller as AndroidViewController,
                  gestureRecognizers: const <Factory<
                      OneSequenceGestureRecognizer>>{},
                  hitTestBehavior: PlatformViewHitTestBehavior.opaque,
                );
              },
              onCreatePlatformView: (PlatformViewCreationParams params) {
                return PlatformViewsService.initSurfaceAndroidView(
                  id: params.id,
                  viewType: 'opentok-video-container',
                  // custom platform-view-type,
                  layoutDirection: TextDirection.ltr,
                  creationParams: {},
                  creationParamsCodec: StandardMessageCodec(),
                )
                  ..addOnPlatformViewCreatedListener(
                      params.onPlatformViewCreated)
                  ..create();
              },
            ),
          ),
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                GestureDetector(
                  onTap: () {
                    _swapCamera();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Platform.isAndroid
                          ? Icons.party_mode
                          : CupertinoIcons.camera_rotate_fill,
                      color: Color(0xFFFAFAFA),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _toggleAudio();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: !_publishAudio ? Colors.black12 : AppColors.pc,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Platform.isAndroid ? Icons.mic : CupertinoIcons.mic,
                      color: Color(0xFFFAFAFA),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    _toggleVideo();
                  },
                  child: Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: !_publishVideo ? Colors.black12 : AppColors.pc,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Platform.isAndroid
                          ? Icons.video_call
                          : CupertinoIcons.videocam_fill,
                      color: Color(0xFFFAFAFA),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    try {
                      setState(() {
                        _closeSession();
                        stopwatch();
                        _sdkState = SdkState.LOGGED_OUT;
                        Navigator.of(context)
                            .pushNamed(RouteGenerator.appointmentScreen);
                      });
                    } catch (e) {
                      print(e);
                    }
                  },
                  child: Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Icon(
                      Platform.isAndroid
                          ? Icons.call_end_rounded
                          : CupertinoIcons.phone_down_fill,
                      color: Color(0xFFFAFAFA),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.1845,
            right: 0,
            child: Container(
              width: MediaQuery.of(context).size.width / 1.4,
              padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 17),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const SizedBox(height: 70),
                    Container(
                      child: Text(
                        _sdkState == SdkState.ONE_USER
                            ? getTimer("stop")
                            : getTimer("start"),
                        maxLines: 3,
                        textAlign: TextAlign.center,
                        overflow: TextOverflow.clip,
                        style: TextStyle(
                          color: Colors.grey.shade400,
                          fontSize: 16,
                        ),
                      ),
                      alignment: Alignment.center,
                    ),
                    const SizedBox(height: 20),
                    Text(
                      _sdkState == SdkState.ONE_USER ? "" : time,
                      style: TextStyle(
                        fontSize: 19.5,
                        color: Colors.grey.shade400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    } else {
      return Center(
          child: Column(children: [
        Text("Téléconsultation Terminée  \n\n Durée :" + time + "\n\n"),
        ElevatedButton(
          child: const Text('OK'),
          onPressed: () async {
            await Navigator.of(context)
                .pushNamed(RouteGenerator.appointmentScreen);
          },
        ),
      ]));
    }
    // else {

    //   WidgetsBinding.instance.addPostFrameCallback((_){

    //  showModal(
    //             context: context,
    //             configuration: FadeScaleTransitionConfiguration(),
    //             builder: (context) => AlertDialog(
    //               title: const Text("Téléconsultation terminée"),
    //               content:
    //                    Text("Durée : "+time),
    //               actions: [
    //                 TextButton(
    //                   onPressed: () {
    //                   Navigator.pop(context);
    //                   },
    //                   child: Text('OK'),
    //                 ),
    //               ],
    //             ),
    //           );

    //  });
    // }
  }
}

enum SdkState { LOGGED_OUT, LOGGED_IN, WAIT, ERROR, ONE_USER }
