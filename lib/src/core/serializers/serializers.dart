library serializers;

import 'package:built_collection/built_collection.dart';
import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:logic_rdv_v0/src/core/models/app_version/app_version_summary.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/cancel_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/cancel_appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/create_appointment_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_apointment_time_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_appointment_request.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/get_paient_for_rdv_response.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/selected_patient_response_for_rdv.dart';
import 'package:logic_rdv_v0/src/core/models/appointment_model/validate_rdv_summary_dto.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_details_model/search_doctor_details_request.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_details_model/search_doctor_details_response.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_request.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/add_doctor_response.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_reponse.dart';
import 'package:logic_rdv_v0/src/core/models/doctor_list_model/list_of_doctor_request.dart';
import 'package:logic_rdv_v0/src/core/models/fixer_rdv_doctor_response/fixer_rdv_doctor_response.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_request.dart';
import 'package:logic_rdv_v0/src/core/models/generate_token_model/get_token_response.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/create_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/create_patient_response.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/inscription_check_request.dart';
import 'package:logic_rdv_v0/src/core/models/incription_model/inscription_check_response.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/forgot_password_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_process_response_end.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_request.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_response.dart';
import 'package:logic_rdv_v0/src/core/models/login_model/login_started_response.dart';
import 'package:logic_rdv_v0/src/core/models/message_rdv/message_request.dart';
import 'package:logic_rdv_v0/src/core/models/message_rdv/message_response.dart';
import 'package:logic_rdv_v0/src/core/models/notification/notification_list_request.dart';
import 'package:logic_rdv_v0/src/core/models/notification/notification_list_response.dart';
import 'package:logic_rdv_v0/src/core/models/patient/get_list_of_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/patient_response_afert_create.dart';
import 'package:logic_rdv_v0/src/core/models/patient/remove_patient_request.dart';
import 'package:logic_rdv_v0/src/core/models/patient/remove_patient_response.dart';
import 'package:logic_rdv_v0/src/core/models/remove_doctor_model/remove_doctor_request.dart';
import 'package:logic_rdv_v0/src/core/models/remove_doctor_model/remove_doctor_response.dart';
import 'package:logic_rdv_v0/src/core/models/remove_user/remove_user_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_city_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_city_model/search_dialog_response.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_request.dart';
import 'package:logic_rdv_v0/src/core/models/search_name_model/search_name_response.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/subscribe_request.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/verify_notif_subscribtion.dart';
import 'package:logic_rdv_v0/src/core/models/telecons_model/teleconsultationrequest.dart';
import 'package:logic_rdv_v0/src/core/models/telecons_model/teleconsultationresponse.dart';
import 'package:logic_rdv_v0/src/core/models/token_user/token_user.dart';
import 'package:logic_rdv_v0/src/core/models/user_model/user_request.dart';
import 'package:logic_rdv_v0/src/core/models/user_model/user_response.dart';

import '../models/login_model/login_started_request.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  GetTokenRequest,
  DataTokenResponse,
  GetTokenResponse,
  LoginRequest,
  LoginResponse,
  ParamsLoginResponse,
  DataLoginResponse,
  SearchCityRequest,
  ClientInfosResponseSearchCity,
  DataSearchCityResponse,
  ParamsSearchCityResponse,
  SearchCityResponse,
  SearchNameRequest,
  AppointmentSearchNameResponse,
  ObjectNameOfSearch,
  DataSearchNameResponse,
  ParamsSearchNameResponse,
  SearchNameResponse,
  ListOfDoctorRequest,
  PaginationListOfDoctor,
  SearchListOfDoctor,
  DataListOfDoctor,
  ParamsListOfDoctor,
  ListOfDoctorReponse,
  TokenUser,
  FixerRdvDoctorResponse,
  ParamsFixerRdvDoctorResponse,
  DataFixerRdvDoctorResponse,
  RemoveDoctorRequest,
  RemoveDoctorResponse,
  ParamsRemoveDoctorResponse,
  UserRequest,
  UserResponse,
  ParamsUserResponse,
  RemoveUserResponse,
  ParamsRemoveUserResponse,
  AppointmentResponse,
  ParamsAppointmentResponse,
  DataAppointmentResponse,
  CabinetResponse,
  PatientResponse,
  AppointmentDataResponse,
  AllAppoinmentResponse,
  GetAppointmentRequest,
  CancelAppointmentRequest,
  ParamsCancelAppointmentResponse,
  CancelAppointmentResponse,
  MessageRequest,
  MessageResponse,
  ParamsMessageResponse,
  DataMessageResponse,
  MessageDataResponse,
  SearchDialogResponse,
  SearchDialogRequest,
  ParamsSearchDialogResponse,
  PatientRequest,
  PatientResponseAfertCreate,
  ParamsPatientResponseAfertCreate,
  DataPatientResponseAfertCreate,
  RemovePatientRequest,
  RemovePatientResponse,
  ParamsRemovePatientResponse,
  GetListOfPatientRequest,
  InscriptionCheckRequest,
  Cgu,
  Etabs,
  DataInscriptionCheckResponse,
  ParamsInscriptionCheckResponse,
  InscriptionCheckResponse,
  CreatePatientRequest,
  CreatePatientResponse,
  ParamsCreatePatientResponse,
  ForgotPasswordRequest,
  AddDoctorRequest,
  AddDoctorResponse,
  ParamsAddDoctor,
  DataAddDoctor,
  EtablissementAddDoctor,
  AppointmentAddDoctor,
  SearchDoctorDetailsRequest,
  SearchDoctorDetailsResponse,
  ParamsDoctorDetails,
  DataDoctorDetails,
  AppointmentDoctorDetails,
  Chapters,
  CreateAppointmentRequest,
  AppointmentNavigation,
  AppointmentTypeResponse,
  DataCreateAppointmentResponse,
  ParamsCreateAppointmentResponse,
  CreateAppointmentResponse,
  GetApointmentTimeResponse,
  ParamsGetApointmentTimeResponse,
  DataGetApointmentTimeResponse,
  DataTimeRdv,
  Creneaux,
  Navigation,
  Begin,
  Prev,
  Prevweek,
  Nextweek,
  GetPaientForRdvResponse,
  ParamsGetPaientForRdvResponse,
  DataGetPaientForRdvResponse,
  PatientDataResponseDrv,
  NavigationGetPaientForRdvResponse,
  BeginGetPaientForRdvResponse,
  PrevGetPaientForRdvResponse,
  SelectedPatientResponseForRdv,
  ParamsSelectedPatientResponseForRdv,
  DataSelectedPatientResponseForRdv,
  DataSelectedPatientResponseForRdv,
  Apptsinprogress,
  Appttovalid,
  Apptinput,
  Apptbuttonvalidation,
  Payment,
  DataSelectedPatientResponseForRdvBody,
  ValidateRdvSummaryDto,
  ParamsValidateRdvSummaryDto,
  DataValidateRdvSummaryDto,
  PaymentIntentSummary,
  DataValidateRdvSummaryDto2,
  AppointmentSummary,
  Appts,
  TeleconsRequest,
  TeleconsResponse,
  ParamsTc,
  DataTc,
  EtablissementTc,
  ApptTc,
  InfosTc,
  PaymentTc,
  TokboxTc,
  LoginStartedRequest,
  LoginStartedResponse,
  ParamsLoginStartedResponse,
  DataLoginStartedResponse,
  InputloginStartedResponse,
  ButtonvalidationloginStartedResponse,
  DataLoginProcessResponseEnd,
  ParamsLoginProcessResponseEnd,
  LoginProcessResponseEnd,
  UserLoginProcessResponseEnd,
  AppVersionSummary,
  ParamsAppVersionSummary,
  DataAppVersionSummary,
  Version,
  SubscribeRequest,
  SubscribeResponse,
  ParamsSubscribeResponse,
  DataSubscribeResponse,
  VerifyNotifSubscribtion,
  ParamsVerifyNotifSubscribtion,
  DataVerifyNotifSubscribtion,
  NotificationListRequest,
  NotificationListResponse,
  NotificationResponseParams,
  NotificationResponseData,
  NotificationResponseList,
  NotificationResponsePagination
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
