import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/function/get_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/login_repository/login_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/message/bloc/message.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/message/function/message_function.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/models/message_rdv/message_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/login_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/AdaptativeIndicator.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:flutter/foundation.dart' as foundation;

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class MessagesScreen extends StatefulWidget {
  const MessagesScreen();

  @override
  _MessagesScreenState createState() => _MessagesScreenState();
}

class _MessagesScreenState extends State<MessagesScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  String _tokenuser = '';
  String _email = '';
  String _fullName = '';
  int currentPage = 1;
  int totalOfPage =0;
  bool isRefreshList = false;
  bool _isLoading = false;
  List<MessageDataResponse> message = [];

  ScrollController _scrollController = new ScrollController();

  @override
  void initState() {
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    super.initState();
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
          getMessageList(
              context: context,
              tokenUser: _tokenuser,
              page: currentPage.toString());
        });
      }
    }
    return false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        key: _scaffoldKey,
        endDrawer:MultiBlocProvider(
          providers: [
            BlocProvider(create: (context) {
              return SharedPreferenceBloc();
            }),
            BlocProvider<SubscribeBloc>(create: (context) {
              return SubscribeBloc(repository: SubscribeRepository());
            }),
          ],
          child: MyDrawer(
            tokenUser: _tokenuser,
            page: '3',
            email: _email,
            fullNme: _fullName, notification: false,
          ),
        ),
        appBar: AdaptativeAppBar(
          leading: DefaultBackButton(),
          title: 'Messages',
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
            BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
                listener: (context, state) {
              if (state is SharedPreferenceReadObjectState) {
                setState(() {
                  _tokenuser = state.sharePreferenceObject!.token;
                  _email = state.sharePreferenceObject!.email;
                  _fullName = state.sharePreferenceObject!.firstName +
                      " " +
                      state.sharePreferenceObject!.lastName;
                  getMessageList(
                      context: context,
                      tokenUser: _tokenuser,
                      page: currentPage.toString());
                });
              } else if (state
                  is SharedPreferenceTokenAuthorizationWriteState) {
                showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (_) => MultiBlocProvider(providers: [
                          BlocProvider<LoginBloc>(create: (context) {
                            return LoginBloc(repository: LoginRepository());
                          }),
                        ], child: LoginfDialog()));
              }
            }),
            BlocListener<MessageBloc, MessageState>(listener: (context, state) {
              if (state is MessageLoadingSuccess) {
                setState(() {
                  message.addAll(state.response.data.list);
                  currentPage += 1;
                  totalOfPage =
                      int.parse(state.response.data.pagination.maxpage);
                  _isLoading = true;
                });
              } else if (state is MessageFailure) {
                setState(() {
                  _isLoading = true;
                  if (state.error == messageErrorTokenInvalid ||
                      state.error == messageErrorTokenExpired) {
                    customAlert(
                      willPop: true,
                      alertType: AlertType.info,
                      context: context,
                      action: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            RouteGenerator.loginScreen, (route) => false);
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
                      ), title: '', buttonLabel: '',
                    );
                  } else if (state.error == invalidTokenUser) {
                    customAlert(
                      willPop: true,
                      alertType: AlertType.info,
                      context: context,
                      action: () {
                        Navigator.pushNamedAndRemoveUntil(context,
                            RouteGenerator.loginScreen, (route) => false);
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
                      ), title: '', buttonLabel: '',
                    );
                  } else {
                    flushBarError(state.error, context);
                  }
                });
              }
            }),
            BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
                listener: (context, state) {
              if (state is GenerateTokenStateLoadingSuccess) {
                BlocProvider.of<SharedPreferenceBloc>(context)
                  ..add(SetSharedPreferenceTokenAuthorization(
                      tokenAuthorizationKey:
                          PreferenceKey.tokenAuthorizationKey,
                      tokenAuthorization: state.getToken.data.authorization
                          .replaceAll("X-LOGICRDV-AUTH:", "")));
              } else if (state is GenerateAndCheckTokenStateLoadingFailure) {
                flushBarError(state.error, context);
              }
            }),
          ],
          child:
              BlocBuilder<MessageBloc, MessageState>(builder: (context, state) {
            return NotificationListener<ScrollNotification>(
              onNotification: _handleNotificationScroll,
              child: _isLoading
                  ? message.length > 0
                      ? SafeArea(
                          child: ListView.builder(
                            controller: _scrollController,
                            itemCount: message.length,
                            padding: EdgeInsets.all(16),
                            itemBuilder: (context, i) => _MessageItem(
                              messageDataResponse: message[i], onPressPdfReader: null,
                            ),
                          ),
                        )
                      : Container(
                          padding: const EdgeInsets.symmetric(horizontal: 24),
                          child: const Center(
                            child: Text(
                              "Aucune donnee disponible pour cette recherche.",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: AppColors.blackColor,
                                fontSize: 16,
                              ),
                            ),
                          ),
                        )
                  : Center(
                      child:  AdaptativeIndicator(),
                    ),
            );
          }),
        ));
  }
}

class _MessageItem extends StatelessWidget {
  final MessageDataResponse messageDataResponse;
  final Function()? onPressPdfReader;

  _MessageItem({
    required this.messageDataResponse,
    required this.onPressPdfReader,
  });

  @override
  Widget build(BuildContext context) {
    String fileName =
        messageDataResponse.file.replaceAll('https://www.logicrdv.fr/', '');
    return Card(
      elevation: 0,
      margin: EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: double.infinity,
            alignment: Alignment.center,
            padding: EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: AppColors.colorPrimary,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(4),
                  topRight: Radius.circular(4),
                )),
            child: Text(
              messageDataResponse.datetime,
              style: TextStyle(
                color: AppColors.whiteColor,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const SizedBox(height: 12),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16, bottom: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Visibility(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _RowTitle(
                        title: 'Fichier', key: null,
                      ),
                      const SizedBox(width: 20),
                      InkWell(
                        onTap: () {
                          launch(messageDataResponse.file);
                        },
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            //  Icon(
                            //   MdiIcons.pdfBox,
                            //   color: Colors.blue,
                            // ),
                            Container(
                              width: MediaQuery.of(context).size.height * 0.15,
                              child: Text(
                                fileName,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                  color: Colors.blue,
                                  fontSize: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  visible: messageDataResponse.file.isNotEmpty,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _RowTitle(
                        title: 'Médecin:', key: null,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        messageDataResponse.from,
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _RowTitle(
                        title: 'Patient:', key: null,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        messageDataResponse.to,
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: _RowTitle(
                        title: 'Sujet:', key: null,
                      ),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Text(
                        messageDataResponse.subject,
                        textAlign: TextAlign.end,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class _RowTitle extends StatelessWidget {
  final String title;

  const _RowTitle({
    required Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        fontSize: 15,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
