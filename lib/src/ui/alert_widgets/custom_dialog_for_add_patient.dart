import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/patient/bloc/patient.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/patient/patient_function/patient_function.dart';
import 'package:logic_rdv_v0/src/core/constants/constants.dart';
import 'package:logic_rdv_v0/src/core/helper/validator_form.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_response_afert_create.dart';
import 'package:logic_rdv_v0/src/ui/alert_widgets/progress_dialog.dart';
import 'package:logic_rdv_v0/src/ui/dialog_alert/custom_alert.dart';
import 'package:logic_rdv_v0/src/ui/shared/adaptative_textform_field.dart';
import 'package:logic_rdv_v0/src/ui/themes/colors.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class DialogForCreatePatient extends StatefulWidget {
  final String intention;
  final PatientRequest patientRequest;
  final String tokenUser;
  final String tokenAppt;
  final String tokenPatient;
  final DataPatientResponseAfertCreate patient;

  DialogForCreatePatient(
      {
      required this.intention,
      required this.patientRequest,
      required this.tokenAppt,
      required this.tokenUser,
      required this.patient,
      required this.tokenPatient});

  @override
  _DialogForCreatePatientState createState() => _DialogForCreatePatientState();
}

class _DialogForCreatePatientState extends State<DialogForCreatePatient> {
  TextEditingController _nomPatientController = TextEditingController();
  TextEditingController _preNomPatientController = TextEditingController();
  TextEditingController _emailPatientController = TextEditingController();
  TextEditingController _telephonePatientController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    if (widget.intention == updateIntention) {
      _nomPatientController.text =
          widget.patientRequest.nom ?? widget.patient.nom!;
      _preNomPatientController.text =
          widget.patientRequest.prenom ?? widget.patient.prenom;
      _emailPatientController.text =
          widget.patientRequest.email ?? widget.patient.email;
      _telephonePatientController.text =
          widget.patientRequest.phone ?? widget.patient.phone!;
    } else {
      _nomPatientController.text = widget.patient.nom!;
      _preNomPatientController.text = "";
      _emailPatientController.text = widget.patient.email;
      _telephonePatientController.text = widget.patient.phone!;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    ProgressDialog _progress =
        ProgressDialog(context, ProgressDialogType.Normal);
    return MultiBlocListener(
      listeners: [
        BlocListener<PatientBloc, PatientState>(listener: (context, state) {
          if (state is PatientLoading) {
            _progress.setMessage('loading');
            _progress.show();
          }
          if (state is AddPatientLoadingSuccess) {
            Navigator.pop(context);
            _progress.hide();
          } else if (state is UpdatePatientLoadingSuccess) {
            Navigator.pop(context);
            _progress.hide();
          } else if (state is PatientFailure) {
            if (state.error == messageErrorTokenInvalid ||
                state.error == messageErrorTokenExpired) {
              Navigator.pop(context);
              customAlert(
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
            } else {
              customAlert(context: context, content: Text(state.error));
            }
          }
        })
      ],
      child: BlocBuilder<PatientBloc, PatientState>(builder: (context, state) {
        return isAndroid || isWeb
            ? AlertDialog(
                contentPadding: EdgeInsets.zero,
                titlePadding: EdgeInsets.zero,
                title: Container(
                  width: double.infinity,
                  height: 60,
                  alignment: Alignment.center,
                  decoration: const BoxDecoration(
                    color: Color(0xFF325288),
                  ),
                  child: Text(
                    widget.intention == updateIntention
                        ? 'Modifier un patient'.toUpperCase()
                        : 'Ajouter un nouveau patient'.toUpperCase(),
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: AppColors.whiteColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                content: Padding(
                  padding: const EdgeInsets.all(16),
                  child: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nom du patient',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 4),
                              AdaptativeTextFormField(
                                hintText: 'Entrez le nom du patient',
                                controller: _nomPatientController,
                                validator: (value) => verifyEmpty(value, errorMessage: ''),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Prénom du patient',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 4),
                              AdaptativeTextFormField(
                                hintText: 'Entrez le prénom du patient',
                                controller: _preNomPatientController,
                                validator: (value) => verifyEmpty(value, errorMessage: ''),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email du patient',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 4),
                              AdaptativeTextFormField(
                                hintText: 'Entrez l\'adresse email du patient',
                                controller: _emailPatientController,
                                validator: (value) => verifyEmpty(value, errorMessage: ''),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Téléphone du patient',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 4),
                              AdaptativeTextFormField(
                                hintText: 'Entrez le Téléphone du patient',
                                controller: _telephonePatientController,
                                validator: (value) => verifyEmpty(value, errorMessage: ''),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text(
                                    'Annuler',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: Colors.cyan,
                                    onPrimary: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    final _form = _formKey.currentState;
                                    if (_form!.validate()) {
                                      if (widget.intention == updateIntention) {
                                        PatientRequest _updatePatient =
                                            PatientRequest((builder) => builder
                                              ..nom = _nomPatientController.text
                                              ..prenom =
                                                  _preNomPatientController.text
                                              ..tokenpatient =
                                                  widget.tokenPatient
                                              ..phone =
                                                  _telephonePatientController
                                                      .text
                                              ..email =
                                                  _emailPatientController.text
                                              ..tokenuser = widget.tokenUser
                                              ..tokenappt = widget.tokenAppt);
                                        editPatient(
                                            context: context,
                                            patientRequest: _updatePatient);
                                      } else {
                                        PatientRequest _createPatient =
                                            PatientRequest((builder) => builder
                                              ..nom = _nomPatientController.text
                                              ..prenom =
                                                  _preNomPatientController.text
                                              ..phone =
                                                  _telephonePatientController
                                                      .text
                                              ..email =
                                                  _emailPatientController.text
                                              ..tokenuser = widget.tokenUser
                                              ..tokenappt = widget.tokenAppt);
                                        addPatient(
                                            context: context,
                                            patientRequest: _createPatient);
                                      }
                                    }
                                  },
                                  child: Text(
                                    'Valider',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: AppColors.primaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              )
            : Material(
                color: Colors.transparent,
                child: CupertinoAlertDialog(
                  title: Container(
                    padding: EdgeInsets.only(bottom: 16),
                    child: Text(
                      widget.intention == updateIntention
                          ? 'Modifier un patient'.toUpperCase()
                          : 'Ajouter un nouveau patient'.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: AppColors.blackColor,
                        fontSize: 14,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  content: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Form(
                      key: _formKey,
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Nom du patient',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 4),
                              AdaptativeTextFormField(
                                hintText: 'Entrez le nom du patient',
                                controller: _nomPatientController,
                                validator: (value) => verifyEmpty(value, errorMessage: ''),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Prénom du patient',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 4),
                              AdaptativeTextFormField(
                                hintText: 'Entrez le prénom du patient',
                                controller: _preNomPatientController,
                                validator: (value) => verifyEmpty(value, errorMessage: ''),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Email du patient',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 4),
                              AdaptativeTextFormField(
                                hintText: 'Entrez l\'adresse email du patient',
                                controller: _emailPatientController,
                                validator: (value) => verifyEmpty(value, errorMessage: ''),
                              ),
                            ],
                          ),
                          const SizedBox(height: 16),
                          Column(
                            mainAxisSize: MainAxisSize.min,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Téléphone du patient',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black54,
                                ),
                              ),
                              const SizedBox(height: 4),
                              AdaptativeTextFormField(
                                hintText: 'Entrez le Téléphone du patient',
                                controller: _telephonePatientController,
                                validator: (value) => verifyEmpty(value, errorMessage: ''),
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () => Navigator.of(context).pop(),
                                  child: Text(
                                    'Annuler',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: Colors.cyan,
                                    onPrimary: AppColors.whiteColor,
                                  ),
                                ),
                              ),
                              const SizedBox(width: 20),
                              Expanded(
                                child: ElevatedButton(
                                  onPressed: () {
                                    final _form = _formKey.currentState;
                                    if (_form!.validate()) {
                                      if (widget.intention == updateIntention) {
                                        PatientRequest _updatePatient =
                                            PatientRequest((builder) => builder
                                              ..nom = _nomPatientController.text
                                              ..prenom =
                                                  _preNomPatientController.text
                                              ..phone =
                                                  _telephonePatientController
                                                      .text
                                              ..email =
                                                  _emailPatientController.text
                                              ..tokenuser = widget.tokenUser
                                              ..tokenappt = widget.tokenAppt);
                                        editPatient(
                                            context: context,
                                            patientRequest: _updatePatient);
                                      } else {
                                        PatientRequest _createPatient =
                                            PatientRequest((builder) => builder
                                              ..nom = _nomPatientController.text
                                              ..prenom =
                                                  _preNomPatientController.text
                                              ..phone =
                                                  _telephonePatientController
                                                      .text
                                              ..email =
                                                  _emailPatientController.text
                                              ..tokenuser = widget.tokenUser
                                              ..tokenappt = widget.tokenAppt);
                                        addPatient(
                                            context: context,
                                            patientRequest: _createPatient);
                                      }
                                    }
                                  },
                                  child: Text(
                                    'Valider',
                                    style: TextStyle(
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  style: ElevatedButton.styleFrom(
                                    elevation: 0,
                                    primary: AppColors.primaryColor,
                                  ),
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              );
      }),
    );
  }
}
