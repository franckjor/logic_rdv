import 'dart:math';

import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/notification/bloc/notification.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/notification/function/notification_function.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/models/notification/notification_list_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:logic_rdv_v0/src/ui/shared/started_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../common.dart';
import '../../core/bloc/bloc_of_shapreference/shared_preference.dart';
import '../../core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import '../../core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import '../../core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  _NotificationScreenState createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  late String _installationIdKey;
  late String _email;
  late String _fullName;
  late String _tokenUser;
  ScrollController _scrollController = new ScrollController();
  int currentPage = 1;
  late int totalOfPage;
  bool isRefreshList = false;
  bool _isLoading = false;
  List<NotificationResponseList> notification = [];
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  var rdNumber = Random().nextInt(3);

  Future<String> _getInstalationIdKey() async {
    final prefs = await SharedPreferences.getInstance();
    _installationIdKey = prefs.getString(PreferenceKey.InstallationIdKey)!;
    print("InstallationIdHome: $_installationIdKey");
    getAllNotificationList(
      context: context,
      installationKey: _installationIdKey,
      tokenUser: _tokenUser,
      page: currentPage.toString(),
    );
    return _installationIdKey;
  }

  bool _handleNotificationScroll(ScrollNotification notification) {
    if (notification is ScrollEndNotification &&
        _scrollController.position.extentAfter == 0) {
      if (totalOfPage < currentPage) {
        setState(() {
          isRefreshList = false;
        });
      } else {
        setState(() {
          isRefreshList = true;
          getAllNotificationList(
            context: context,
            installationKey: _installationIdKey,
            tokenUser: _tokenUser,
            page: currentPage.toString(),
          );
        });
      }
    }
    return false;
  }

  @override
  void initState() {
    super.initState();
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    if (_tokenUser == null) {
      _getInstalationIdKey();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: _tokenUser == null
          ? StartedDrawer()
          : MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) {
                  return SharedPreferenceBloc();
                }),
                BlocProvider<SubscribeBloc>(create: (context) {
                  return SubscribeBloc(repository: SubscribeRepository());
                }),
              ],
              child: MyDrawer(
                tokenUser: _tokenUser,
                page: '7',
                email: _email,
                fullNme: _fullName,
              ),
            ),
      backgroundColor: Color(0xFFeff4fb),
      appBar: AdaptativeAppBar(
        title: 'Notifications',
        leading: DefaultBackButton(),
        actions: [
          IconButton(
            icon: isAndroid || isWeb
                ?  Icon(
                    MdiIcons.accountCircle,
                    color: Colors.white,
                  )
                :  Icon(
                    CupertinoIcons.person_alt_circle_fill,
                    color: Colors.white,
                  ),
            splashRadius: 20,
            onPressed: () => _scaffoldKey.currentState!.openEndDrawer(),
          ),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
              listener: (context, state) {
            if (state is GenerateTokenStateLoadingSuccess) {
              BlocProvider.of<SharedPreferenceBloc>(context)
                ..add(SetSharedPreferenceTokenAuthorization(
                    tokenAuthorizationKey: PreferenceKey.tokenAuthorizationKey,
                    tokenAuthorization: state.getToken.data.authorization!
                        .replaceAll("X-LOGICRDV-AUTH:", "")));
            } else if (state is GenerateAndCheckTokenStateLoadingFailure) {
              flushBarError(state.error, context);
            }
          }),
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedPreferenceReadObjectState) {
              setState(() {
                notification.clear();
                _tokenUser = state.sharePreferenceObject.token;
                _email = state.sharePreferenceObject.email;
                _fullName = state.sharePreferenceObject.firstName +
                    " " +
                    state.sharePreferenceObject.lastName;

                _getInstalationIdKey();
              });
            }
          }),
          BlocListener<NotificationBloc, NotificationState>(
              listener: (context, state) {
            if (state is NotificationListLoadingSuccess) {
              setState(() {
                _isLoading = true;
                notification.addAll(state.response.data.list);
                currentPage += 1;
                totalOfPage = int.parse(state.response.data.pagination.maxpage);
                isRefreshList = false;
              });
            } else if (state is NotificationFailure) {
              if (state.error == messageErrorTokenInvalid ||
                  state.error == messageErrorTokenExpired) {
                customAlert(
                  willPop: true,
                  alertType: AlertType.info,
                  context: context,
                  action: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RouteGenerator.loginScreen, (route) => false);
                  },
                  content: Container(
                    child: Text(
                      "Votre session a expiré. Veuillez vous reconnecter.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                );
              } else if (state.error == invalidTokenUser) {
                customAlert(
                  willPop: true,
                  alertType: AlertType.info,
                  context: context,
                  action: () {
                    Navigator.pushNamedAndRemoveUntil(
                        context, RouteGenerator.loginScreen, (route) => false);
                  },
                  content: Container(
                    child: Text(
                      "Votre compte a été désactivé. Vous allez être déconnecté.",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                );
              } else {
                flushBarError(state.error, context);
              }
              _isLoading = true;
            }
          }),
        ],
        child: BlocBuilder<NotificationBloc, NotificationState>(
            builder: (context, state) {
          return _isLoading
              ? SafeArea(
                  child: NotificationListener<ScrollNotification>(
                    onNotification: _handleNotificationScroll,
                    child: ListView.builder(
                      controller: _scrollController,
                      itemCount: notification.length,
                      itemBuilder: (context, i) => _NotificationItem(
                        description: notification[i].message,
                        title: notification[i].nom,
                        date: notification[i].date,
                        icon: notification[i].nature.contains('SMS')
                            ? Icons.message
                            : Icons.notifications,
                      ),
                    ),
                  ),
                )
              : Container(
                  child: Center(
                    child: CircularProgressIndicator(),
                  ),
                );
        }),
      ),
    );
  }
}

class _NotificationItem extends StatelessWidget {
  final IconData? icon;
  final String? title;
  final String? description;
  final String? date;

  const _NotificationItem({
    super.key,
    this.icon,
    this.title,
    this.description,
    this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 02, horizontal: 16),
        child: Card(
          elevation: 5,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 05),
            child: ListTile(
              title: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 05),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(4),
                    ),
                    child: Icon(
                      icon,
                      color: Color(0xFF304170),
                      size: 20,
                    ),
                  ),
                  Text(
                    title!,
                    maxLines: 2,
                    softWrap: true,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      color: Color(0xFF304170),
                      fontWeight: FontWeight.w700,
                      fontSize: 12,
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Icon(
                            Icons.calendar_today_outlined,
                            color: Color(0xFF304170),
                            size: 14,
                          ),
                          SizedBox(
                            width: 05,
                          ),
                          Text(
                            date!,
                            style: TextStyle(
                              color: Colors.black54,
                              fontSize: 10,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              subtitle: Container(
                padding: EdgeInsets.only(top: 05),
                child: Text(
                  description!,
                  textAlign: TextAlign.start,
                  maxLines: 100,
                  style: TextStyle(
                    color: Colors.black87,
                    fontSize: 13,
                  ),
                ),
              ),
            ),
          ),
        ));
  }
}
