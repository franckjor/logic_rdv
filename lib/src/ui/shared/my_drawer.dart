import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/function/subscribe_function.dart';
import 'package:logic_rdv_v0/src/core/helper/app_version.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_confirm_alert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wonderpush_flutter/wonderpush_flutter.dart';

class MyDrawer extends StatefulWidget {
  final String fullNme;
  final String email;
  final String page;
  final String tokenUser;
  final bool notification;

  MyDrawer({
    required this.fullNme,
    required this.email,
    required this.tokenUser,
    required this.notification,
    this.page = '0',
  });

  @override
  _MyDrawerState createState() => _MyDrawerState();
}

class _MyDrawerState extends State<MyDrawer> {
  String _installationIdKey ='';
  String _isSubscribe ='';
  String _tokenuser = '';
  bool _notification =false;

  Future<String> getInstalationIdKey() async {
    final prefs = await SharedPreferences.getInstance();
    _installationIdKey = prefs.getString(PreferenceKey.InstallationIdKey)!;
    print("InstallationIdHome: $_installationIdKey");
    return _installationIdKey;
  }

  void writeIsSubscribeInMemory(String value) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString(PreferenceKey.isSubscribe, value);
  }

  Future<String> getVerifyIfIsSubscribe() async {
    final prefs = await SharedPreferences.getInstance();
    _isSubscribe = prefs.getString(PreferenceKey.isSubscribe)!;
    print("_isSubscribe: $_isSubscribe");
    setState(() {
      if (_isSubscribe == "0") {
        _notification = false;
      } else {
        _notification = true;
      }
    });
    return _isSubscribe;
  }

  @override
  void initState() {
    getInstalationIdKey();
    getVerifyIfIsSubscribe();
    _notification = widget.notification;
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    super.initState();
  }

  removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(PreferenceKey.objectKey);
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocListener(
      listeners: [
        BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
            listener: (context, state) {
          if (state is SharedPreferenceReadObjectState) {
            setState(() {
              _tokenuser = state.sharePreferenceObject!.token;
            });
          }
        }),
        BlocListener<SubscribeBloc, SubscribeState>(listener: (context, state) {
          if (state is SubscribeStateLoadingSuccess) {
            setState(() {
              _notification = true;
              WonderPush.subscribeToNotifications();
              writeIsSubscribeInMemory("1");
              flushBarSuccess(state.subscribeResponse.message, context);
              Navigator.pop(context);
              getVerifyIfIsSubscribe();
            });
          } else if (state is IsSubscribeStateLoadingSuccess) {
            setState(() {
              if (state.verifyNotifSubscribtion.data.issubscribed == "0") {
                _notification = false;
              } else {
                _notification = true;
              }
            });
          } else if (state is UnSubscribeStateLoadingSuccess) {
            setState(() {
              _notification = false;
              writeIsSubscribeInMemory("0");
              flushBarSuccess(state.subscribeResponse.message, context);
              getVerifyIfIsSubscribe();
              if (state.subscribeResponse.data.total == "0") {
                WonderPush.unsubscribeFromNotifications();
              }
            });
          } else if (state is SubscribeStateLoadingFailure) {
            flushBarError(state.error, context);
          }
        }),
      ],
      child:
          BlocBuilder<SubscribeBloc, SubscribeState>(builder: (context, state) {
        return SafeArea(
          child: Drawer(
            child: Column(
              children: [
                Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      DrawerHeader(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                    Navigator.of(context).pushReplacementNamed(
                                        RouteGenerator.userEditedProfile);
                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                      'assets/images/medecin.png',
                                    ),
                                    backgroundColor: Colors.white,
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    alignment: Alignment.centerRight,
                                    child: ListTile(
                                      title: Text(
                                        "Quitter",
                                        textAlign: TextAlign.right,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: AppColors.whiteColor,
                                        ),
                                      ),
                                      onTap: () {
                                        customConfirmAlert(
                                            context: context,
                                            alertType: AlertType.info,
                                            content: Text(
                                              'Est-vous sûre de vouloir quitter l\'application ?',
                                              textAlign: TextAlign.center,
                                            ),
                                            onNoAction: () {
                                              Navigator.pop(context);
                                            },
                                            onYesAction: () {
                                              if (Platform.isAndroid) {
                                                SystemNavigator.pop();
                                              } else if (Platform.isIOS) {
                                                exit(0);
                                              }
                                            },
                                            title: '', confirmButtonLabel: '', cancelButtonLabel: '');
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 6),
                            Text(
                              widget.fullNme ?? '--',
                              style: TextStyle(
                                fontWeight: FontWeight.w700,
                                color: AppColors.whiteColor,
                                fontSize: 17,
                              ),
                            ),
                            const SizedBox(height: 2),
                            Text(
                              widget.email ?? '...',
                              style: TextStyle(
                                fontWeight: FontWeight.w600,
                                color: AppColors.whiteColor,
                              ),
                            ),
                            Container(
                                width: double.infinity,
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "V " + AppVersion.CURRENT_VERSION,
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 8,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ))
                          ],
                        ),
                        decoration: BoxDecoration(
                          color: AppColors.colorPrimary,
                        ),
                      ),
                      _DrawerItem(
                        text: 'Mes rendez-vous',
                        icon: isAndroid || isWeb
                            ? Icons.home
                            : CupertinoIcons.house_fill,
                        onTap: () {
                          Navigator.of(context)
                              .pushNamed(RouteGenerator.appointmentScreen);
                        }, key: null,
                      ),
                      _DrawerItem(
                        text: 'Fixez rendez-vous',
                        icon: isAndroid || isWeb
                            ? Icons.auto_fix_high
                            : CupertinoIcons
                                .person_crop_circle_fill_badge_xmark,
                        onTap: () {
                          if (widget.page == '1') {
                            Navigator.of(context).pop();
                          } else {
                            Navigator.of(context).pop();
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.homeScreen);
                          }
                        }, key: null,
                      ),
                      // _DrawerItem(
                      //   text: 'Mes rendez-vous',
                      //   icon: isAndroid || isWeb
                      //       ? Icons.schedule
                      //       : CupertinoIcons.clock_fill,
                      //   onTap: () {
                      //     if (widget.page == '6') {
                      //       Navigator.of(context).pop();
                      //     } else {
                      //       Navigator.of(context).pop();
                      //       Navigator.of(context).pushNamed(RouteGenerator.listOfRdv);
                      //     }
                      //   },
                      // ),
                      _DrawerItem(
                        text: 'Documents et messages',
                        icon: isAndroid || isWeb
                            ? Icons.message
                            : CupertinoIcons.bubble_right_fill,
                        onTap: () {
                          if (widget.page == '3') {
                            Navigator.of(context).pop();
                          } else {
                            Navigator.of(context).pop();
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.messagesScreen);
                          }
                        }, key: null,
                      ),
                      _DrawerItem(
                        text: 'Gestion de la famille',
                        icon: isAndroid || isWeb
                            ? Icons.folder_shared
                            : CupertinoIcons.folder_fill_badge_minus,
                        onTap: () {
                          if (widget.page == '4') {
                            Navigator.of(context).pop();
                          } else {
                            Navigator.of(context).pop();
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.patientManagement);
                          }
                        }, key: null,
                      ),
                      _DrawerItem(
                        text: 'Mon compte',
                        icon: isAndroid || isWeb
                            ? Icons.person
                            : CupertinoIcons.person_fill,
                        onTap: () {
                          if (widget.page == '5') {
                            Navigator.of(context).pop();
                          } else {
                            Navigator.of(context).pop();
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.userProfileScreen);
                          }
                        }, key: null,
                      ),
                      _DrawerItem(
                        icon: isAndroid || isWeb
                            ? Icons.search
                            : CupertinoIcons.search_circle_fill,
                        text: 'Rechercher un praticien',
                        onTap: () {
                          if (widget.page == '6') {
                            Navigator.of(context).pop();
                          } else {
                            Navigator.of(context).pop();
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.searchDoctorInApp);
                          }
                        }, key: null,
                      ),
                      _DrawerItem(
                        icon: Icons.notifications,
                        text: 'Mes Notifications',
                        onTap: () {
                          if (widget.page == '7') {
                            Navigator.of(context).pop();
                          } else {
                            Navigator.of(context).pop();
                            Navigator.of(context)
                                .pushNamed(RouteGenerator.notificationScreen);
                          }
                        }, key: null,
                      ),
                      _DrawerItem(
                        text: 'Déconnexion',
                        icon: isAndroid || isWeb
                            ? Icons.logout
                            : CupertinoIcons.square_arrow_right_fill,
                        onTap: () {
                          removeValues();
                          Navigator.of(context).pop();
                          Navigator.of(context).pushNamedAndRemoveUntil(
                              RouteGenerator.welcomeScreen, (route) => false);
                        }, key: null,
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    children: [
                      Expanded(
                        child: _DrawerItem(
                          text: 'Notification',
                          icon: Icons.notifications_active,
                          onTap: () {}, key: null,
                        ),
                      ),
                      Switch(
                        value: _notification,
                        onChanged: (value) {
                          _notification
                              ? unSubscribe(
                                  context: context,
                                  installationkey: _installationIdKey,
                                  tokenuser: _tokenuser)
                              : subscribe(
                                  context: context,
                                  installationkey: _installationIdKey,
                                  tokenuser: _tokenuser);
                        },
                        activeTrackColor: AppColors.primaryColor,
                        activeColor: AppColors.primaryColor,
                      ),
                    ],
                  ),
                ),
                Container(
                    padding: EdgeInsets.only(bottom: 05),
                    child: Text(
                      "Version " + AppVersion.CURRENT_VERSION,
                      style: TextStyle(
                        color: AppColors.colorPrimary,
                        fontWeight: FontWeight.bold,
                        fontSize: 10,
                      ),
                    ))
              ],
            ),
          ),
        );
      }),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final IconData icon;

  const _DrawerItem({
    required Key? key,
    required this.text,
    required this.icon,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: Row(
          children: [
            Icon(
              icon,
              color: AppColors.primaryColor,
              size: 20,
            ),
            const SizedBox(width: 12),
            Text(
              text,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w600,
                color: AppColors.colorBrown,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
