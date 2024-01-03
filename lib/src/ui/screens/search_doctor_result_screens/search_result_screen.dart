import 'dart:io' show Platform;

import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/bloc/login.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/login/login_repository/login_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/bloc/search.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/search_city_provider_function/searchByCity.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/login_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/loading_page_infinite_scroll.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:logic_rdv_v0/src/ui/shared/social_icon.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../../core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import '../../shared/started_drawer.dart';

class SearchResultPageArguments implements PagesArgumentType {
  final String city;
  final String cityId;
  final String categoryId;
  final String nameOrSpeciality;

  SearchResultPageArguments({
    this.city,
    this.nameOrSpeciality,
    this.cityId,
    this.categoryId,
  });

  @override
  getArguments() {
    return this;
  }
}

class SearchResultScreen extends StatefulWidget {
  final SearchResultPageArguments arguments;

  SearchResultScreen({required this.arguments});

  @override
  _SearchResultScreenState createState() => _SearchResultScreenState();
}

class _SearchResultScreenState extends State<SearchResultScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  ScrollController _scrollController = new ScrollController();
  int currentPage = 1;
  int totalOfPage;
  bool isRefreshList = false;
  bool _isLoading = false;
  String _tokenUser;

  List<ObjectNameOfSearch> doctors = [];

  @override
  void initState() {
    BlocProvider.of<SharedPreferenceBloc>(context)
      ..add(GetSharedPreferenceObject(objectKey: PreferenceKey.objectKey));
    getListOfDoctor(
        context: context,
        page: currentPage.toString(),
        cityOrOther: widget.arguments.city,
        villeId: widget.arguments.cityId,
        categoryId: widget.arguments.categoryId,
        nameOrService: widget.arguments.nameOrSpeciality);
    super.initState();
  }

  void _openWhatsApp(
    String phone,
    String message,
  ) async {
    String url() {
      if (isAndroid || isWeb) {
        return "whatsapp://send?text=$message";
      } else {
        return "whatsapp://send?text=$message";
      }
    }

    if (await canLaunch(url())) {
      await launch(url());
    } else {
      throw 'Could not launch ${url()}';
    }
  }

  void _sendWazeCoordonate(
    String lat,
    String lng,
  ) async {
    if (isAndroid || isWeb) {
      final uri = "https://waze.com/ul?ll=$lat,$lng";
      await launch(uri);
    } else if (Platform.isIOS) {
      final uri = "https://waze.com/ul?ll=$lat,$lng";
      await launch(uri);
    }
  }

  void _openGoogleMapApp(double lat, double lng) async {
    String googleUrl =
        'https://www.google.com/maps/search/?api=1&query=$lat,$lng';
    if (await canLaunch(googleUrl)) {
      await launch(googleUrl);
    } else {
      throw 'Could not open the map.';
    }
  }

  Future<void> _makeCall(
    String phone,
  ) async {
    await FlutterPhoneDirectCaller.callNumber(phone);
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
          getListOfDoctor(
              context: context,
              page: currentPage.toString(),
              cityOrOther: widget.arguments.city,
              villeId: widget.arguments.cityId,
              categoryId: widget.arguments.categoryId,
              nameOrService: widget.arguments.nameOrSpeciality);
        });
      }
    }
    return false;
  }

  String _email;
  String _fullName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      endDrawer: _tokenUser == null
          ? StartedDrawer()
          : Visibility(
              visible: _tokenUser != null,
              child: MultiBlocProvider(
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
                  page: '0',
                  email: _email,
                  fullNme: _fullName,
                ),
              )),
      appBar: AppBar(
        title: const Text(
          'Résultats',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        backgroundColor: AppColors.colorPrimary,
        leading: DefaultBackButton(),
        actions: [
          _tokenUser == null
              ? IconButton(
                  icon: Platform.isAndroid
                      ? const Icon(
                          MdiIcons.menu,
                          color: Color.fromARGB(255, 255, 255, 255),
                        )
                      : const Icon(
                          MdiIcons.menu,
                          color: Color.fromARGB(255, 255, 255, 255),
                        ),
                  splashRadius: 20,
                  onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
                )
              : Visibility(
                  visible: _tokenUser != null,
                  child: IconButton(
                    icon: isAndroid || isWeb
                        ? const Icon(
                            MdiIcons.accountCircle,
                            color: Colors.white,
                          )
                        : const Icon(
                            CupertinoIcons.person_alt_circle_fill,
                            color: Colors.white,
                          ),
                    splashRadius: 20,
                    onPressed: () => _scaffoldKey.currentState.openEndDrawer(),
                  ),
                ),
        ],
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
              listener: (context, state) {
            if (state is SharedPreferenceReadObjectState) {
              setState(() {
                _tokenUser = state.sharePreferenceObject.token;
                _email = state.sharePreferenceObject.email;
                _fullName = state.sharePreferenceObject.firstName +
                    " " +
                    state.sharePreferenceObject.lastName;
              });
            }
            if (state is SharedPreferenceTokenAuthorizationWriteState) {
              showDialog(
                barrierDismissible: false,
                context: context,
                builder: (_) => MultiBlocProvider(providers: [
                  BlocProvider<LoginBloc>(create: (context) {
                    return LoginBloc(repository: LoginRepository());
                  }),
                ], child: LoginfDialog()),
              );
            }
          }),
          BlocListener<GenerateAndCheckTokenBloc, GenerateAndCheckTokenState>(
              listener: (context, state) {
            if (state is GenerateTokenStateLoadingSuccess) {
              BlocProvider.of<SharedPreferenceBloc>(context)
                ..add(SetSharedPreferenceTokenAuthorization(
                    tokenAuthorizationKey: PreferenceKey.tokenAuthorizationKey,
                    tokenAuthorization: state.getToken.data.authorization
                        .replaceAll("X-LOGICRDV-AUTH:", "")));
            } else if (state is GenerateAndCheckTokenStateLoadingFailure) {
              flushBarError(state.error, context);
            }
          }),
          BlocListener<SearchBloc, SearchState>(listener: (context, state) {
            if (state is ListOfDoctorStateLoadingSuccess) {
              setState(() {
                _isLoading = true;
                doctors.addAll(state.doctors.data.list);
                totalOfPage = int.parse(state.doctors.data.pagination.maxpage);
                currentPage += 1;
                isRefreshList = false;
              });
            } else if (state is SearchStateLoadingFailure) {
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
            }
          })
        ],
        child: BlocBuilder<SearchBloc, SearchState>(
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.only(left: 16, right: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Wrap(
                    children: [
                      Text('Résultat de recherche pour: '),
                      Text(
                        '${widget?.arguments?.city} ${widget?.arguments?.nameOrSpeciality}',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 14,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 16),
                  _isLoading
                      ? Expanded(
                          child: NotificationListener<ScrollNotification>(
                            onNotification: _handleNotificationScroll,
                            child: doctors.length > 0
                                ? Scrollbar(
                                    child: ListView.builder(
                                      controller: _scrollController,
                                      itemCount: doctors.length,
                                      shrinkWrap: true,
                                      itemBuilder: (context, i) => Card(
                                        shadowColor: Colors.transparent,
                                        shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(8),
                                        ),
                                        child: Padding(
                                          padding: const EdgeInsets.only(
                                              bottom: 10, top: 0),
                                          child: Container(
                                            height: 125,
                                            child: Row(
                                              children: [
                                                Expanded(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.only(
                                                      top: 0,
                                                      left: 16,
                                                    ),
                                                    child: Row(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Column(
                                                          mainAxisSize:
                                                              MainAxisSize.min,
                                                          children: [
                                                            Material(
                                                              elevation: 4,
                                                              color: Colors
                                                                  .transparent,
                                                              shadowColor: AppColors
                                                                  .primaryColor,
                                                              shape:
                                                                  RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30),
                                                              ),
                                                              child:
                                                                  CircleAvatar(
                                                                radius: 30,
                                                                backgroundImage:
                                                                    AssetImage(
                                                                  'assets/images/medecin.png',
                                                                ),
                                                                backgroundColor:
                                                                    Colors
                                                                        .white,
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                                height: 8),
                                                            ElevatedButton(
                                                              onPressed: () => Navigator.of(context).pushNamed(
                                                                  RouteGenerator
                                                                      .doctorProfileScreen,
                                                                  arguments: GetDoctorIdPageArguments(
                                                                      id: doctors[
                                                                              i]
                                                                          .id)),
                                                              child: Text(
                                                                  'Profil'),
                                                              style:
                                                                  ElevatedButton
                                                                      .styleFrom(
                                                                elevation: 0,
                                                                shape:
                                                                    RoundedRectangleBorder(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              8),
                                                                ),
                                                                primary: AppColors
                                                                    .primaryColor,
                                                                padding:
                                                                    EdgeInsets
                                                                        .all(0),
                                                              ),
                                                            )
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            width: 12),
                                                        Expanded(
                                                          child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            crossAxisAlignment:
                                                                CrossAxisAlignment
                                                                    .start,
                                                            children: [
                                                              new RichText(
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                softWrap: false,
                                                                maxLines: 1,
                                                                text:
                                                                    new TextSpan(
                                                                  text: doctors[
                                                                          i]
                                                                      .civility,
                                                                  style:
                                                                      TextStyle(
                                                                    color: AppColors
                                                                        .secondaryColor,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .w600,
                                                                    fontSize:
                                                                        16,
                                                                  ),
                                                                  children: <TextSpan>[
                                                                    new TextSpan(
                                                                      text: " " +
                                                                          doctors[i]
                                                                              .fullName,
                                                                      style:
                                                                          TextStyle(
                                                                        color: AppColors
                                                                            .secondaryColor,
                                                                        fontWeight:
                                                                            FontWeight.w600,
                                                                        fontSize:
                                                                            16,
                                                                      ),
                                                                    ),
                                                                  ],
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 2),
                                                              Text(
                                                                doctors[i]
                                                                    .category,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style:
                                                                    TextStyle(
                                                                  color: AppColors
                                                                      .primaryColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w700,
                                                                  fontSize: 14,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 2),
                                                              Text(
                                                                doctors[i]
                                                                    .address
                                                                    .toUpperCase(),
                                                                softWrap: false,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style:
                                                                    TextStyle(
                                                                  color: AppColors
                                                                      .primaryColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 4),
                                                              Text(
                                                                doctors[i].zip +
                                                                    " " +
                                                                    doctors[i]
                                                                        .city,
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                style:
                                                                    TextStyle(
                                                                  color: AppColors
                                                                      .primaryColor,
                                                                  fontWeight:
                                                                      FontWeight
                                                                          .w500,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                              const SizedBox(
                                                                  height: 4),
                                                              (doctors[i].kmDiff ==
                                                                          '' ||
                                                                      doctors[i]
                                                                              .kmDiff ==
                                                                          null)
                                                                  ? const SizedBox
                                                                      .shrink()
                                                                  : Text(
                                                                      'à ' +
                                                                          doctors[i]
                                                                              .kmDiff +
                                                                          ' Km',
                                                                      overflow:
                                                                          TextOverflow
                                                                              .ellipsis,
                                                                      style:
                                                                          TextStyle(
                                                                        color: AppColors
                                                                            .primaryColor,
                                                                        fontWeight:
                                                                            FontWeight.w500,
                                                                        fontSize:
                                                                            12,
                                                                      ),
                                                                    ),
                                                              Row(
                                                                mainAxisAlignment:
                                                                    MainAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Text(
                                                                    doctors[i]
                                                                        .tel,
                                                                    style:
                                                                        TextStyle(
                                                                      color: AppColors
                                                                          .primaryColor,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .bold,
                                                                      fontSize:
                                                                          13.5,
                                                                    ),
                                                                  ),
                                                                  Container(
                                                                    height: 25,
                                                                    width: 25,
                                                                    margin: const EdgeInsets
                                                                        .only(
                                                                        left:
                                                                            8),
                                                                    decoration:
                                                                        BoxDecoration(
                                                                      color: AppColors
                                                                          .primaryColor,
                                                                      shape: BoxShape
                                                                          .circle,
                                                                    ),
                                                                    child:
                                                                        IconButton(
                                                                      icon:
                                                                          const Icon(
                                                                        Icons
                                                                            .call,
                                                                        color: AppColors
                                                                            .whiteColor,
                                                                        size:
                                                                            16,
                                                                      ),
                                                                      splashRadius:
                                                                          16,
                                                                      padding:
                                                                          EdgeInsets
                                                                              .zero,
                                                                      onPressed:
                                                                          () async =>
                                                                              await _makeCall(doctors[i].telnospace),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ],
                                                          ),
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                ),
                                                Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment
                                                          .spaceEvenly,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SocialIcon(
                                                      imageUrl:
                                                          'assets/images/whatsapp.svg',
                                                      onPressed: () => _openWhatsApp(
                                                          '${doctors[i].telnospace}',
                                                          '${doctors[i].fullName} : ${doctors[i].address}, ${doctors[i].zip} ${doctors[i].city}. Position : https://maps.google.com/?q=${doctors[i].lat},${doctors[i].lng}'),
                                                    ),
                                                    SocialIcon(
                                                      imageUrl:
                                                          'assets/images/waze.svg',
                                                      onPressed: () =>
                                                          _sendWazeCoordonate(
                                                              '${doctors[i].lat}',
                                                              '${doctors[i].lng}'),
                                                    ),
                                                    SocialIcon(
                                                      imageUrl:
                                                          'assets/images/google-maps.svg',
                                                      onPressed: () =>
                                                          _openGoogleMapApp(
                                                              double.parse(
                                                                  doctors[i]
                                                                      .lat),
                                                              double.parse(
                                                                  doctors[i]
                                                                      .lng)),
                                                    ),
                                                    // Padding(
                                                    //   padding:
                                                    //       const EdgeInsets.only(
                                                    //           right: 8),
                                                    //   child: IconButton(
                                                    //     icon: Icon(
                                                    //       MdiIcons.delete,
                                                    //       color: Colors.red,
                                                    //     ),
                                                    //     splashRadius: 16,
                                                    //     constraints:
                                                    //         BoxConstraints(),
                                                    //     padding:
                                                    //         EdgeInsets.zero,
                                                    //     onPressed: () {},
                                                    //   ),
                                                    // ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(
                                    child: const Center(
                                      child: Text(
                                        "Aucune donnée disponible pour cette recherche.",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.blackColor,
                                          fontSize: 16,
                                        ),
                                      ),
                                    ),
                                  ),
                          ),
                        )
                      : Expanded(
                          child: Container(
                            margin: const EdgeInsets.only(top: 8),
                            child: Center(
                              child: CircularProgressIndicator(
                                valueColor: AlwaysStoppedAnimation<Color>(
                                  AppColors.primaryColor,
                                ),
                              ),
                            ),
                          ),
                        ),
                  LoadingPageInfiniteScroll(
                    isRefreshList: isRefreshList,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

// class ResultMedecinItem extends StatelessWidget {
//   const ResultMedecinItem({
//     Key key,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Row(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Column(
//               mainAxisSize: MainAxisSize.min,
//               children: [
//                 Material(
//                   elevation: 4,
//                   color: Colors.transparent,
//                   shadowColor: AppColors.primaryColor,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   child: CircleAvatar(
//                     radius: 30,
//                     backgroundImage: AssetImage(
//                       'assets/images/medecin.png',
//                     ),
//                     backgroundColor: Colors.white,
//                   ),
//                 ),
//                 const SizedBox(height: 8),
//                 ElevatedButton(
//                   onPressed: () {},
//                   child: Text('Voir le profil'),
//                   style: ElevatedButton.styleFrom(
//                     primary: AppColors.primaryColor,
//                   ),
//                 )
//               ],
//             ),
//             const SizedBox(width: 16),
//             Flexible(
//               child: Column(
//                 mainAxisSize: MainAxisSize.min,
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Text(
//                     'Paris 1er',
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 22,
//                       color: AppColors.secondaryColor,
//                     ),
//                   ),
//                   const SizedBox(height: 8),
//                   Text(
//                     'Medecin Expert',
//                     overflow: TextOverflow.ellipsis,
//                     style: TextStyle(
//                       fontWeight: FontWeight.w600,
//                       fontSize: 18,
//                       color: AppColors.primaryColor,
//                     ),
//                   ),
//                   const SizedBox(height: 18),
//                   Container(
//                     child: Text(
//                       '75000 Paris',
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                         fontWeight: FontWeight.w600,
//                         fontSize: 16,
//                         color: AppColors.primaryColor,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
