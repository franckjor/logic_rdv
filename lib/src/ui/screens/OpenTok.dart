import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_credit_card/flutter_credit_card.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/telecons/bloc/telecons.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/telecons/telecons_function/telecons_function.dart';
import 'package:logic_rdv_v0/src/core/models/telecons_model/teleconsultationresponse.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_appbar.dart';
import 'package:logic_rdv_v0/src/ui/shared/my_drawer.dart';
import 'package:logic_rdv_v0/src/ui/stripe_paiement/stripe_tc_paiement.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:universal_io/io.dart';
import 'package:flutter/foundation.dart' as foundation;
import 'Teleconsultation_screen.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class TeleconsArgument implements PagesArgumentType {
  final String? tokentelecon;

  TeleconsArgument({
    this.tokentelecon,
  });

  @override
  getArguments() {
    return this;
  }
}

class CallWidget extends StatefulWidget {
  final TeleconsArgument? argument;

  CallWidget({this.argument});

  _CallWidgetState createState() => _CallWidgetState();
}

class _CallWidgetState extends State<CallWidget> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();

  String cardNumber = '';
  String expiryDate = '';
  String cardHolderName = '';
  String cvvCode = '';
  bool isCvvFocused = false;

  List<String> _dateExpired = [];

  @override
  void initState() {
    getTeleocns(context: context, tokentelecons: widget.argument!.tokentelecon!);

    StripeServiceTc.init();
    super.initState();
  }

  void onCreditCardModelChange(CreditCardModel creditCardModel) {
    setState(() {
      cardNumber = creditCardModel.cardNumber;
      expiryDate = creditCardModel.expiryDate;
      cvvCode = creditCardModel.cvvCode ;
      isCvvFocused = creditCardModel.isCvvFocused;
      _dateExpired = expiryDate.split("/");
    });
  }

  final GlobalKey<FormState> formKey = GlobalKey<FormState>();

  late String _stripeClient;
  late String _apiKey;
  late String _sessionId;
  late String _token;
  bool _isLoading = false;
  late EtablissementTc _etablissementTc;
  late ApptTc _apptTc;
  late InfosTc _infostc;
  late PaymentTc _paymentTc;
  late TokboxTc _tokboxTc;

  Future<void> _makeCall(
    String phone,
  ) async {
    await FlutterPhoneDirectCaller.callNumber(phone);
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog _progressDialog =
        new ProgressDialog(context, ProgressDialogType.Normal);
    return Scaffold(
      key: _scaffoldKey,
      appBar: AdaptativeAppBar(
        title: 'Paiement',
        leading: DefaultBackButton(
          onPressed: () => Navigator.pushReplacementNamed(
              context, RouteGenerator.appointmentScreen),
        ),
      ),
      body: MultiBlocListener(
        listeners: [
          BlocListener<TeleconsBloc, TeleconsState>(listener: (context, state) {
            if (state is TeleconsLoadingSuccess) {
              setState(() {
                _progressDialog.hide();
                _etablissementTc = state.response.data.etablissement;
                _infostc = state.response.data.infos;
                _apptTc = state.response.data.appt;
                _paymentTc = state.response.data.payment;
                _tokboxTc = state.response.data.tokbox;
                _stripeClient = state.response.data.payment.stripeClientSecret;
                _apiKey = state.response.data.tokbox.apiKey;
                _token = state.response.data.tokbox.token;
                _sessionId = state.response.data.tokbox.sessionId;
                _isLoading = !_isLoading;
              });
            } else if (state is TeleconsFailure) {
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
                customAlert(
                  willPop: true,
                  alertType: AlertType.info,
                  context: context,
                  action: () {
                    Navigator.pop(context);
                    setState(() {
                      _isLoading = false;
                    });
                  },
                  content: Container(
                    child: Text(
                      state.error,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ),
                );
              }
            }
          })
        ],
        child: BlocBuilder<TeleconsBloc, TeleconsState>(
          builder: (context, state) {
            return Stack(
              clipBehavior: Clip.none,
              fit: StackFit.expand,
              children: [
                Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/background_tc.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                _isLoading
                    ? Padding(
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        child: SingleChildScrollView(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    colors: [
                                      const Color(0xFF9C51E0),
                                      const Color(0xFF8A39E1),
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(6, 12, 0, 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        child: Text(
                                          _etablissementTc?.nom ?? '--',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 0),
                                        child: Text(
                                          _etablissementTc?.city ?? '--',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                            fontSize: 14,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        child: Text(
                                          _etablissementTc.address ?? '--',
                                          style: TextStyle(
                                            fontWeight: FontWeight.w500,
                                            fontSize: 14,
                                            fontStyle: FontStyle.italic,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 8, vertical: 2),
                                        child: Row(
                                          children: [
                                            Text(
                                              _etablissementTc.tel ?? '--',
                                              style: TextStyle(
                                                color: Colors.white,
                                                fontWeight: FontWeight.w500,
                                                fontSize: 14,
                                              ),
                                            ),
                                            const SizedBox(width: 8),
                                            Container(
                                              height: 25,
                                              width: 25,
                                              margin: const EdgeInsets.only(
                                                  left: 8),
                                              decoration: BoxDecoration(
                                                color: AppColors.primaryColor,
                                                shape: BoxShape.circle,
                                              ),
                                              child: IconButton(
                                                icon:  Icon(
                                                  Icons.call,
                                                  color: AppColors.whiteColor,
                                                  size: 16,
                                                ),
                                                splashRadius: 16,
                                                padding: EdgeInsets.zero,
                                                onPressed: () async =>
                                                    await _makeCall(
                                                        _etablissementTc.tel),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    colors: [
                                      const Color(0xFF015C92).withOpacity(.8),
                                      const Color(0xFF2D82B5).withOpacity(.6),
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(16, 0, 12, 12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Chip(
                                        backgroundColor: Color(0xFF94B0B7),
                                        label: Padding(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 8, vertical: 6),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.min,
                                            mainAxisAlignment:
                                                MainAxisAlignment.start,
                                            children: [
                                              Icon(
                                                FontAwesomeIcons
                                                    .briefcaseMedical,
                                                size: 20,
                                                color: AppColors.colorWhite,
                                              ),
                                              const SizedBox(width: 8),
                                              Text(
                                                _apptTc.description,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontWeight: FontWeight.w600,
                                                  color: AppColors.colorWhite,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      const SizedBox(height: 4),
                                      Divider(),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            FontAwesomeIcons.userMd,
                                            size: 20,
                                            color: AppColors.whiteColor,
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            _apptTc.doctor,
                                            style: TextStyle(
                                              fontSize: 14.75,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.whiteColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 10),
                                      Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Icon(
                                            Icons.account_circle,
                                            color: AppColors.whiteColor,
                                          ),
                                          const SizedBox(width: 8),
                                          Text(
                                            _apptTc.patient,
                                            style: TextStyle(
                                              fontSize: 14.75,
                                              fontWeight: FontWeight.w600,
                                              color: AppColors.whiteColor,
                                            ),
                                          ),
                                        ],
                                      ),
                                      const SizedBox(height: 16),
                                      Container(
                                        padding: const EdgeInsets.all(16),
                                        alignment: Alignment.center,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(20),
                                          gradient: LinearGradient(
                                            colors: [
                                              const Color(0xFF88CDF6),
                                              const Color(0xFF88CDF6),
                                              const Color(0xFFBCE6FF),
                                            ],
                                          ),
                                        ),
                                        child: Text(
                                          _apptTc.date,
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontWeight: FontWeight.w600,
                                            color: AppColors.whiteColor,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              Container(
                                margin:
                                    const EdgeInsets.symmetric(horizontal: 16),
                                padding: const EdgeInsets.all(12),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  gradient: LinearGradient(
                                    colors: [
                                      AppColors.card_head_color,
                                      AppColors.card_text_header_color,
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(12),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.stretch,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text(
                                        _paymentTc.title,
                                        style: TextStyle(
                                          fontSize: 16,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      _paymentTc.statuslabel != ''
                                          ? const SizedBox(height: 10)
                                          : SizedBox.shrink(),
                                      Text(_paymentTc.statuslabel),
                                      _paymentTc.statuslabel != ''
                                          ? const SizedBox(height: 10)
                                          : SizedBox.shrink(),
                                      Text(_paymentTc.history),
                                      _paymentTc.history != ''
                                          ? const SizedBox(height: 10)
                                          : SizedBox.shrink(),
                                      Text(
                                        _paymentTc.text,
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(height: 16),
                              _stripeClient == ""
                                  ? Container(
                                      child: Center(
                                          child: (_tokboxTc.error != "")
                                              ? Card(
                                                  child: Padding(
                                                    padding:
                                                        const EdgeInsets.all(
                                                            12),
                                                    child: Column(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .stretch,
                                                      mainAxisSize:
                                                          MainAxisSize.min,
                                                      children: [
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Icon(
                                                                FontAwesomeIcons
                                                                    .info,
                                                                size: 20),
                                                            const SizedBox(
                                                                width: 8),
                                                            Text(
                                                              "Information",
                                                              style: TextStyle(
                                                                fontSize: 14,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                        const SizedBox(
                                                            height: 4),
                                                        Row(
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: <Widget>[
                                                            Flexible(
                                                                child: new Text(
                                                                    _tokboxTc
                                                                        .error))
                                                          ],
                                                        )
                                                      ],
                                                    ),
                                                  ),
                                                )
                                              : (_infostc.buttonstartteleconsdisabled ==
                                                      "1")
                                                  ? Container()
                                                  : Padding(
                                                      padding:
                                                          const EdgeInsets.only(
                                                        top: 8,
                                                        left: 16,
                                                        right: 16,
                                                      ),
                                                      child: Container(
                                                        height: 48,
                                                        width: double.infinity,
                                                        child:
                                                            ElevatedButton.icon(
                                                          onPressed: () async {
                                                            await Navigator.of(context).pushNamed(
                                                                RouteGenerator
                                                                    .teleconsultationScreen,
                                                                arguments: GetCredentialsTokboxPageArguments(
                                                                    API_KEY:
                                                                        _apiKey,
                                                                    SESSION_ID:
                                                                        _sessionId,
                                                                    TOKENTELECONS: widget
                                                                        .argument
                                                                        ?.tokentelecon,
                                                                    TOKEN:
                                                                        _token,
                                                                    Date: _apptTc
                                                                        .date,
                                                                    Doctor: _apptTc
                                                                        .doctor,
                                                                    Patient: _apptTc
                                                                        .patient));
                                                          },
                                                          icon: Icon(Icons
                                                              .featured_video_rounded),
                                                          label: Text(
                                                            'Lancer la téléconsultation',
                                                            style: TextStyle(
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                          style: ElevatedButton
                                                              .styleFrom(
                                                            primary: AppColors
                                                                .colorPrimary,
                                                            elevation: 0,
                                                            shape:
                                                                RoundedRectangleBorder(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          12),
                                                            ),
                                                          ),
                                                        ),
                                                      ),
                                                    )),
                                    )
                                  : Container(
                                      alignment: Alignment.center,
                                      child: Column(
                                        children: [
                                          CreditCardForm(
                                            cardNumber: null,
                                            expiryDate: null,
                                            cardHolderName: null,
                                            cvvCode: null,
                                            themeColor: Colors.grey,
                                            formKey: formKey,
                                            onCreditCardModelChange:
                                                onCreditCardModelChange,
                                            obscureCvv: false,
                                            obscureNumber: false,
                                            isHolderNameVisible: false,
                                            cardNumberDecoration:
                                                const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Numéro de la carte',
                                              hintText: 'XXXX XXXX XXXX XXXX',
                                            ),
                                            expiryDateDecoration:
                                                const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'Date expiration',
                                              hintText: 'XX/XX',
                                            ),
                                            cvvCodeDecoration:
                                                const InputDecoration(
                                              border: OutlineInputBorder(),
                                              labelText: 'CVV',
                                              hintText: 'XXX',
                                            ),
                                            cardHolderDecoration:
                                                const InputDecoration(
                                              enabled: false,
                                              border: InputBorder.none,
                                              labelStyle: TextStyle(
                                                  color: Colors.transparent),
                                              labelText: 'CVV',
                                            ),
                                          ),
                                          const SizedBox(height: 10),
                                          ElevatedButton.icon(
                                            onPressed: () {
                                              if (formKey.currentState!
                                                  .validate()) {
                                                _progressDialog.setMessage(
                                                    'Chargement en cours ...');

                                                _progressDialog.show();
                                                StripeServiceTc.payNowHandler(
                                                    context: context,
                                                    stripeClientSecret:
                                                        _stripeClient,
                                                    ackRdvProgressDialog:
                                                        _progressDialog,
                                                    cardNumber: cardNumber,
                                                    expMonth: int.parse(
                                                        _dateExpired[0]),
                                                    expYear: int.parse(
                                                        _dateExpired[1]),
                                                    tokentelecon: widget
                                                        .argument!
                                                        .tokentelecon!);

                                                setState(() {
                                                  _isLoading = false;
                                                });
                                              }
                                            },
                                            icon: Icon(Icons.credit_card),
                                            label: Text(
                                              'Prépaiement',
                                              style: TextStyle(
                                                fontSize: 16,
                                                fontWeight: FontWeight.w600,
                                              ),
                                            ),
                                            style: ElevatedButton.styleFrom(
                                              primary: AppColors.colorPrimary,
                                              elevation: 0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(12),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                            ],
                          ),
                        ),
                      )
                    : const Center(
                        child: CircularProgressIndicator(),
                      ),
              ],
            );
          },
        ),
      ),
    );
  }
}
