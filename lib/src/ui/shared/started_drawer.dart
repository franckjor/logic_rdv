import 'dart:io';

import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/helper/app_version.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_confirm_alert.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

class StartedDrawer extends StatefulWidget {
  @override
  _StartedDrawerState createState() => _StartedDrawerState();
}

class _StartedDrawerState extends State<StartedDrawer> {
  @override
  void initState() {
    super.initState();
  }

  removeValues() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.remove(PreferenceKey.objectKey);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Drawer(
        child: Column(
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
                            'assets/images/app_icon.png',
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
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(
                        padding: EdgeInsets.only(bottom: 05),
                        alignment: Alignment.bottomRight,
                        child: Text(
                          "V " + AppVersion.CURRENT_VERSION,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 9,
                              fontWeight: FontWeight.bold),
                        )),
                  )
                ],
              ),
              decoration: BoxDecoration(
                color: AppColors.colorPrimary,
              ),
            ),
            _DrawerItem(
              text: 'Accueil',
              icon: isAndroid || isWeb ? Icons.home : CupertinoIcons.house_fill,
              onTap: () {
                Navigator.of(context)
                    .popAndPushNamed(RouteGenerator.welcomeScreen);
              },
            ),
            _DrawerItem(
              text: 'Notification',
              icon: Icons.notifications,
              onTap: () {
                Navigator.of(context)
                    .popAndPushNamed(RouteGenerator.notificationScreen);
              },
            ),
            // _DrawerItem(
            //   text: 'Quitter',
            //   icon: isAndroid || isWeb
            //       ? Icons.exit_to_app
            //       : CupertinoIcons.person_crop_circle_fill_badge_xmark,
            //   onTap: () {
            //     customConfirmAlert(
            //         context: context,
            //         alertType: AlertType.info,
            //         content: Text(
            //           'Est-vous sûre de vouloir quitter l\'application ?',
            //           textAlign: TextAlign.center,
            //         ),
            //         onNoAction: () {
            //           Navigator.pop(context);
            //         },
            //         onYesAction: () {
            //           if (Platform.isAndroid) {
            //             SystemNavigator.pop();
            //           } else if (Platform.isIOS) {
            //             exit(0);
            //           }
            //         },
            //         title: '');
            //   },
            // ),
            Expanded(
              child: Container(
                  alignment: Alignment.bottomCenter,
                  child: Text(
                    "Version " + AppVersion.CURRENT_VERSION,
                    style: TextStyle(
                      color: AppColors.colorPrimary,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}

class _DrawerItem extends StatelessWidget {
  final String text;
  final Function()? onTap;
  final IconData icon;

  const _DrawerItem({
    Key? key,
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
