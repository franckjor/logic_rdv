import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_svg/svg.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/generate_and_check_token/bloc/generate_and_check_token.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/bloc/search.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/search_city/search_city_provider_function/searchByCity.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/preference_key.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/custom_snackbar.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/loading_page_infinite_scroll.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../common.dart';

class SearchDoctorAroundResultPageArguments implements PagesArgumentType {
  final String city;
  final String cityOrOther;
  final String cityId;
  final String categoryId;
  final String nameOrSpeciality;

  SearchDoctorAroundResultPageArguments({
    this.city,
    this.nameOrSpeciality,
    this.cityId,
    this.categoryId,
    this.cityOrOther,
  });

  @override
  getArguments() {
    return this;
  }
}

class SearchDoctorAround extends StatefulWidget {
  final SearchDoctorAroundResultPageArguments arguments;

  SearchDoctorAround({this.arguments});

  @override
  _SearchDoctorAroundState createState() => _SearchDoctorAroundState();
}

class _SearchDoctorAroundState extends State<SearchDoctorAround> {
  ScrollController _scrollController = new ScrollController();
  int currentPage = 1;
  int totalOfPage;
  bool isRefreshList = false;
  bool _isLoading = false;

  List<ObjectNameOfSearch> doctors = [];

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

  void _makeCall(
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
          getListOfDoctorAround(
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

  @override
  void initState() {
    getListOfDoctorAround(
        context: context,
        page: currentPage.toString(),
        cityOrOther: widget.arguments.city,
        villeId: widget.arguments.cityId,
        categoryId: widget.arguments.categoryId,
        nameOrService: widget.arguments.nameOrSpeciality);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Résultats'),
        backgroundColor: AppColors.colorPrimary,
        leading: DefaultBackButton(),
        actions: [
          
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () => Navigator.pop(context),
          ),
        ],
      ),
      body: MultiBlocListener(
          listeners: [
            BlocListener<SharedPreferenceBloc, SharedPreferenceState>(
                listener: (context, state) {
              if (state is SharedPreferenceTokenAuthorizationWriteState) {}
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
            BlocListener<SearchBloc, SearchState>(listener: (context, state) {
              if (state is ListOfDoctorAroundStateLoadingSuccess) {
                setState(() {
                  _isLoading = true;
                  doctors.addAll(state.doctors.data.list);
                  totalOfPage =
                      int.parse(state.doctors.data.pagination.maxpage);
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
                    ),
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
                    ),
                  );
                } else {
                  flushBarError(state.error, context);
                }
              }
            })
          ],
          child:
              BlocBuilder<SearchBloc, SearchState>(builder: (context, state) {
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
                                                                  children: <
                                                                      TextSpan>[
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
                                                                          () =>
                                                                              _makeCall(doctors[i].telnospace),
                                                                    ),
                                                                  ),
                                                                  // IconButton(
                                                                  //   icon: Icon(
                                                                  //       Icons.call,
                                                                  //       size: 18),
                                                                  //   splashRadius:
                                                                  //       16,
                                                                  //   onPressed: () =>
                                                                  //       _makeCall(
                                                                  //           doctors[i]
                                                                  //               .telnospace),
                                                                  // ),
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
                                                          .spaceAround,
                                                  mainAxisSize:
                                                      MainAxisSize.min,
                                                  children: [
                                                    SocialIcon(
                                                      imageUrl:
                                                          'assets/images/whatsapp.svg',
                                                      onPressed: () => _openWhatsApp(
                                                          '${doctors[i]?.telnospace}',
                                                          '${doctors[i]?.nom} : ${doctors[i]?.address}, ${doctors[i]?.city}. Position : https://maps.google.com/?q=${doctors[i]?.lat},${doctors[i]?.lng}'),
                                                    ),
                                                    SocialIcon(
                                                      imageUrl:
                                                          'assets/images/waze.svg',
                                                      onPressed: () =>
                                                          _sendWazeCoordonate(
                                                              '${doctors[i]?.lat}',
                                                              '${doctors[i]?.lng}'),
                                                    ),
                                                    SocialIcon(
                                                      imageUrl:
                                                          'assets/images/google-maps.svg',
                                                      onPressed: () =>
                                                          _openGoogleMapApp(
                                                              double.parse(
                                                                  doctors[i]
                                                                      ?.lat),
                                                              double.parse(
                                                                  doctors[i]
                                                                      ?.lng)),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                              right: 8),
                                                      child: IconButton(
                                                        icon: Icon(
                                                          MdiIcons.delete,
                                                          color: Colors.red,
                                                        ),
                                                        splashRadius: 16,
                                                        constraints:
                                                            BoxConstraints(),
                                                        padding:
                                                            EdgeInsets.zero,
                                                        onPressed: () {},
                                                      ),
                                                    ),
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
          })),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String imageUrl;
  final Function onPressed;

  const SocialIcon({
    Key key,
    @required this.imageUrl,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      padding: const EdgeInsets.only(right: 10),
      child: IconButton(
        icon: SvgPicture.asset(imageUrl),
        splashRadius: 16,
        padding: EdgeInsets.zero,
        onPressed: onPressed,
      ),
    );
  }
}
