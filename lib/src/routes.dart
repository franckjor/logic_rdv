import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/common.dart';
import 'package:logic_rdv_v0/src/core/bloc/bloc_of_shapreference/shared_preference.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/add_doctor/repository/add_doctor_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/appointment.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/bloc/create_appointment_bloc/create_appointement.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/repository/appointment_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/appointment/repository/create_appointment_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/inscription_rapide/repositories/inscription_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/message/bloc/message.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/notification/bloc/notification.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/patient/bloc/patient.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/remove_doctor/bloc/remove_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/remove_doctor/repository/remove_doctor_repository.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/bloc/version.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/repository/version_repository.dart';
import 'package:logic_rdv_v0/src/ui/screens/Patient_management_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/appoitment_screens/appointment_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/appoitment_screens/list_of_rdv_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/card_payement/exist_card_view.dart';
import 'package:logic_rdv_v0/src/ui/screens/condition_dutilisation.dart';
import 'package:logic_rdv_v0/src/ui/screens/help_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/notification_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_is_validate/rdv_is_validate.dart';
import 'package:logic_rdv_v0/src/ui/screens/rdv_select_day_and_time/rdv_select_day_and_time_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/search_doctor_around/search_doctor_around_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/search_doctor_in_app/search_doctor_in_app.dart';
import 'package:logic_rdv_v0/src/ui/screens/user_profil/user_profile_screen.dart';
import 'package:logic_rdv_v0/src/ui/screens/user_profil/user_profils_for_edited.dart';
import 'package:logic_rdv_v0/src/ui/screens/validate_rdv/rdv_validate.dart';

import 'core/bloc/navigation/navigation_bloc.dart';
import 'core/blocs_and_repository/add_doctor/bloc/add_doctor.dart';
import 'core/blocs_and_repository/doctor_details/bloc/doctor_details.dart';
import 'core/blocs_and_repository/doctor_details/repository/doctor_details_repositopry.dart';
import 'core/blocs_and_repository/fixer_rdv_doctor/bloc/fixer_rdv_doctor.dart';
import 'core/blocs_and_repository/fixer_rdv_doctor/fixer_rdv_doctor_response_repository/fixer_rdv_doctor_repository.dart';
import 'core/blocs_and_repository/inscription_rapide/bloc/incription_rapid.dart';
import 'core/blocs_and_repository/login/bloc/login.dart';
import 'core/blocs_and_repository/login/login_repository/login_repository.dart';
import 'core/blocs_and_repository/message/repository/message_repository.dart';
import 'core/blocs_and_repository/notification/repository/notification_repository.dart';
import 'core/blocs_and_repository/patient/patient_repository/patient_repository.dart';
import 'core/blocs_and_repository/search_city/bloc/search.dart';
import 'core/blocs_and_repository/search_city/search_city_repository/search_city_repository.dart';
import 'core/blocs_and_repository/subcribe_notification/repository/subscribe_repository.dart';
import 'core/blocs_and_repository/telecons/bloc/telecons.dart';
import 'core/blocs_and_repository/telecons/telecons_repository/telecons_repository.dart';
import 'core/blocs_and_repository/user/bloc/user.dart';
import 'core/blocs_and_repository/user/user_repository/user_repository.dart';
import 'ui/screens/OpenTok.dart';
import 'ui/screens/Teleconsultation_screen.dart';
import 'ui/screens/appoitment_screens/appointmnt_details.dart';
import 'ui/screens/home_screen.dart';
import 'ui/screens/message_screens/messages_screen.dart';
import 'ui/screens/rdv_type/rdv_type.dart';

class RouteGenerator {
  static const String welcomeScreen = '/';
  static const String splashScreen = '/splash-screen';
  static const String loginScreen = '/login-screen';
  static const String searchResultScreen = '/search-result-screen';
  static const String doctorLocationScreen = '/doctor-location-screen';
  static const String homeScreen = '/home-screen';
  static const String patientManagement = '/patient_management';
  static const String forgotPasswordScreen = '/forgot-password-screen';
  static const String messagesScreen = '/messages-screen';
  static const String userProfileScreen = '/user-profile-screen';
  static const String appointmentScreen = '/appointment-screen';
  static const String messageReadPdf = '/message_read_pdf';
  static const String searchDoctorInApp = '/search_doctor_in_app';
  static const String searchDoctorAround = '/search-doctor-around';
  static const String helpScreen = '/help-screen';
  static const String registerScreen = '/register-screen';
  static const String patientListScreen = '/patient-list-screen';
  static const String teleconsultationScreen = '/teleconsultation-screen';
  static const String conditionDutilisation = '/condition_utilisation';
  static const String userEditedProfile = '/user_edited_profile';
  static const String rdvType = '/rdv_type';
  static const String openTok = '/OpenTok';
  static const String notificationScreen = '/notification-screen';
  static const String doctorProfileScreen = '/doctor-profile-screen';
  static const String paymentMethodScreen = '/payment-method-screen';
  static const String existingCard = '/existing_card';
  static const String rdvValidate = '/rdv_validate';
  static const String rdvIsValidate = '/rdv_is_validate';
  static const String appointmentDetails = '/appointment_details';
  static const String listOfRdv = '/list_of_rdv';
  static const String rdvSelectDayAndTimeScreen =
      '/rdv_select_day_and_time_screen';

  RouteGenerator._();

  static final key = GlobalKey<NavigatorState>();

  static Route<dynamic> generateRoute(RouteSettings settings) {
    final args = settings.arguments;

    switch (settings.name) {
      case welcomeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider(create: (context) {
              return SearchBloc(repository: SearchCityRepository());
            }),
            BlocProvider<SharedPreferenceBloc>(create: (context) {
              return SharedPreferenceBloc();
            }),
            BlocProvider<NavigationBloc>(create: (context) {
              return NavigationBloc();
            }),
            BlocProvider<VersionBloc>(create: (context) {
              return VersionBloc(repository: VersionRepository());
            }),
            BlocProvider<SubscribeBloc>(create: (context) {
              return SubscribeBloc(repository: SubscribeRepository());
            }),
          ], child: const WelcomeScreen()),
        );
      case splashScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const SplashScreen(),
        );
      case conditionDutilisation:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const ConditionDutilisation(),
        );
      case rdvSelectDayAndTimeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider<SharedPreferenceBloc>(create: (context) {
                  return SharedPreferenceBloc();
                }),
                BlocProvider<CreateAppointmentBloc>(create: (context) {
                  return CreateAppointmentBloc(
                      repository: CreateAppointmentRepository());
                }),
                BlocProvider<AddDoctorBloc>(create: (context) {
                  return AddDoctorBloc(repository: AddDoctorRepository());
                }),
                BlocProvider<SubscribeBloc>(create: (context) {
                  return SubscribeBloc(repository: SubscribeRepository());
                }),
              ],
              child: RdvSelectDayAndTimeScreen(
                arguments: args as GetRdvTimeAndDayPageArguments,
              )),
        );
      case existingCard:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const ExistingCard(),
        );
      case openTok:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider(create: (context) {
                  return TeleconsBloc(repository: TeleconsRepository());
                }),
                BlocProvider<SubscribeBloc>(create: (context) {
                  return SubscribeBloc(repository: SubscribeRepository());
                }),
              ],
              child: CallWidget(
                argument: args as TeleconsArgument,
              )),
        );
      case rdvType:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider<SharedPreferenceBloc>(create: (context) {
                  return SharedPreferenceBloc();
                }),
                BlocProvider<CreateAppointmentBloc>(create: (context) {
                  return CreateAppointmentBloc(
                      repository: CreateAppointmentRepository());
                }),
                BlocProvider<SubscribeBloc>(create: (context) {
                  return SubscribeBloc(repository: SubscribeRepository());
                }),
              ],
              child: RdvType(
                arguments: args as GetRdvTypePageArguments,
              )),
        );

      case loginScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider<SharedPreferenceBloc>(create: (context) {
              return SharedPreferenceBloc();
            }),
            BlocProvider(create: (context) {
              return LoginBloc(repository: LoginRepository());
            })
          ], child: const LoginScreen()),
        );
      case searchResultScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<SearchBloc>(create: (context) {
                return SearchBloc(repository: SearchCityRepository());
              }),
              BlocProvider<SharedPreferenceBloc>(create: (context) {
                return SharedPreferenceBloc();
              }),
              BlocProvider<SubscribeBloc>(create: (context) {
                return SubscribeBloc(repository: SubscribeRepository());
              }),
            ],
            child: SearchResultScreen(
              arguments: args as SearchResultPageArguments,
            ),
          ),
        );
      case rdvIsValidate:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<SearchBloc>(create: (context) {
                return SearchBloc(repository: SearchCityRepository());
              }),
              BlocProvider<SharedPreferenceBloc>(create: (context) {
                return SharedPreferenceBloc();
              }),
              BlocProvider<SubscribeBloc>(create: (context) {
                return SubscribeBloc(repository: SubscribeRepository());
              }),
            ],
            child: RdvIsValidate(
              arguments: args as RdvIsValidatePageArguments,
            ),
          ),
        );
      case searchDoctorInApp:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<SearchBloc>(create: (context) {
                return SearchBloc(repository: SearchCityRepository());
              }),
              BlocProvider<SharedPreferenceBloc>(create: (context) {
                return SharedPreferenceBloc();
              }),
              BlocProvider<SubscribeBloc>(create: (context) {
                return SubscribeBloc(repository: SubscribeRepository());
              }),
              BlocProvider<NavigationBloc>(
                create: (context) {
                  return NavigationBloc();
                },
              ),
            ],
            child: SearchDoctorInApp(),
          ),
        );
      case searchDoctorAround:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<SearchBloc>(create: (context) {
                return SearchBloc(repository: SearchCityRepository());
              }),
              BlocProvider<SharedPreferenceBloc>(create: (context) {
                return SharedPreferenceBloc();
              }),
              BlocProvider<SubscribeBloc>(create: (context) {
                return SubscribeBloc(repository: SubscribeRepository());
              }),
              BlocProvider<NavigationBloc>(
                create: (context) {
                  return NavigationBloc();
                },
              ),
            ],
            child: SearchDoctorAround(
              arguments: args as SearchDoctorAroundResultPageArguments,
            ),
          ),
        );

      case homeScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider<SharedPreferenceBloc>(create: (context) {
              return SharedPreferenceBloc();
            }),
            BlocProvider<FixerRdvDoctorBloc>(create: (context) {
              return FixerRdvDoctorBloc(repository: FixerRdvDoctorRepository());
            }),
            BlocProvider<RemoveDoctorBloc>(create: (context) {
              return RemoveDoctorBloc(repository: RemoveDoctorRepository());
            }),
            BlocProvider<AddDoctorBloc>(create: (context) {
              return AddDoctorBloc(repository: AddDoctorRepository());
            }),
            BlocProvider<SubscribeBloc>(create: (context) {
              return SubscribeBloc(repository: SubscribeRepository());
            }),
          ], child: const HomeScreen()),
        );

      case patientManagement:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider<SharedPreferenceBloc>(create: (context) {
              return SharedPreferenceBloc();
            }),
            BlocProvider<FixerRdvDoctorBloc>(create: (context) {
              return FixerRdvDoctorBloc(repository: FixerRdvDoctorRepository());
            }),
            BlocProvider<RemoveDoctorBloc>(create: (context) {
              return RemoveDoctorBloc(repository: RemoveDoctorRepository());
            }),
            BlocProvider<SubscribeBloc>(create: (context) {
              return SubscribeBloc(repository: SubscribeRepository());
            }),
            BlocProvider<AddDoctorBloc>(create: (context) {
              return AddDoctorBloc(repository: AddDoctorRepository());
            })
          ], child: const PatientManagement()),
        );

      case forgotPasswordScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
              providers: [
                BlocProvider<SharedPreferenceBloc>(create: (context) {
                  return SharedPreferenceBloc();
                }),
                BlocProvider(create: (context) {
                  return LoginBloc(repository: LoginRepository());
                })
              ],
              child: ForgotPasswordScreen(
                arguments: args as ForgotPasswordRdvPageArguments,
              )),
        );
      case messagesScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<SharedPreferenceBloc>(create: (context) {
                return SharedPreferenceBloc();
              }),
              BlocProvider<MessageBloc>(create: (context) {
                return MessageBloc(repository: MessageRepository());
              }),
              BlocProvider<SubscribeBloc>(create: (context) {
                return SubscribeBloc(repository: SubscribeRepository());
              }),
            ],
            child: const MessagesScreen(),
          ),
        );
      case userProfileScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider<SharedPreferenceBloc>(create: (context) {
              return SharedPreferenceBloc();
            }),
            BlocProvider<SubscribeBloc>(create: (context) {
              return SubscribeBloc(repository: SubscribeRepository());
            }),
            BlocProvider<UserBloc>(create: (context) {
              return UserBloc(repository: UserRepository());
            }),
          ], child: const UserProfileScreen()),
        );
      case appointmentScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider<SharedPreferenceBloc>(create: (context) {
              return SharedPreferenceBloc();
            }),
            BlocProvider<AppointmentBloc>(create: (context) {
              return AppointmentBloc(repository: AppointmentRepository());
            }),
            BlocProvider<VersionBloc>(create: (context) {
              return VersionBloc(repository: VersionRepository());
            }),
            BlocProvider<SubscribeBloc>(create: (context) {
              return SubscribeBloc(repository: SubscribeRepository());
            }),
          ], child: AppointmentScreen(appointementArg: null,)),
        );
      case listOfRdv:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider<SharedPreferenceBloc>(create: (context) {
              return SharedPreferenceBloc();
            }),
            BlocProvider<AppointmentBloc>(create: (context) {
              return AppointmentBloc(repository: AppointmentRepository());
            }),
            BlocProvider<SubscribeBloc>(create: (context) {
              return SubscribeBloc(repository: SubscribeRepository());
            }),
          ], child: ListOfRdv()),
        );
      case helpScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const HelpScreen(),
        );
      case appointmentDetails:
        return MaterialPageRoute<dynamic>(
          builder: (_) => AppointmentDetails(arguments: args as AppointmentDetailsPageArguments),
        );
      case notificationScreen:
        return MaterialPageRoute<dynamic>(
            builder: (_) => MultiBlocProvider(
                  providers: [
                    BlocProvider<UserBloc>(create: (context) {
                      return UserBloc(repository: UserRepository());
                    }),
                    BlocProvider<SubscribeBloc>(create: (context) {
                      return SubscribeBloc(repository: SubscribeRepository());
                    }),
                    BlocProvider<SharedPreferenceBloc>(create: (context) {
                      return SharedPreferenceBloc();
                    }),
                    BlocProvider<NotificationBloc>(create: (context) {
                      return NotificationBloc(
                          repository: NotificationRepository());
                    }),
                  ],
                  child: NotificationScreen(),
                ));
      case paymentMethodScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => const PaymentMethodScreen(),
        );
      case registerScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider<InscriptionRapidBloc>(create: (context) {
              return InscriptionRapidBloc(
                  repository: InscriptionRapidRepository());
            }),
          ], child: const RegisterScreen()),
        );
      case userEditedProfile:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(providers: [
            BlocProvider<SharedPreferenceBloc>(create: (context) {
              return SharedPreferenceBloc();
            }),
            BlocProvider<UserBloc>(create: (context) {
              return UserBloc(repository: UserRepository());
            }),
            BlocProvider<SubscribeBloc>(create: (context) {
              return SubscribeBloc(repository: SubscribeRepository());
            }),
          ], child: UserEditedProfile()),
        );
      case patientListScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<SharedPreferenceBloc>(create: (context) {
                return SharedPreferenceBloc();
              }),
              BlocProvider<PatientBloc>(create: (context) {
                return PatientBloc(repository: PatientRepository());
              }),
              BlocProvider<CreateAppointmentBloc>(create: (context) {
                return CreateAppointmentBloc(
                    repository: CreateAppointmentRepository());
              }),
              BlocProvider<SubscribeBloc>(create: (context) {
                return SubscribeBloc(repository: SubscribeRepository());
              }),
              BlocProvider<AppointmentBloc>(create: (context) {
                return AppointmentBloc(repository: AppointmentRepository());
              })
            ],
            child: PatientListScreen(
              arguments: args as GetPatientPageArguments,
            ),
          ),
        );

      case teleconsultationScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) {
                return TeleconsBloc(repository: TeleconsRepository());
              })
            ],
            child: TeleconsultationScreen(
              arguments: args as GetCredentialsTokboxPageArguments,
            ),
          ),
        );
      case rdvValidate:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider<SharedPreferenceBloc>(create: (context) {
                return SharedPreferenceBloc();
              }),
              BlocProvider<PatientBloc>(create: (context) {
                return PatientBloc(repository: PatientRepository());
              }),
              BlocProvider<SubscribeBloc>(create: (context) {
                return SubscribeBloc(repository: SubscribeRepository());
              }),
              BlocProvider<CreateAppointmentBloc>(create: (context) {
                return CreateAppointmentBloc(
                    repository: CreateAppointmentRepository());
              })
            ],
            child: RdvValidate(
              arguments: args as ValidateRdvPageArguments,
            ),
          ),
        );
      case doctorProfileScreen:
        return MaterialPageRoute<dynamic>(
          builder: (_) => MultiBlocProvider(
            providers: [
              BlocProvider(create: (context) {
                return SharedPreferenceBloc();
              }),
              BlocProvider<SubscribeBloc>(create: (context) {
                return SubscribeBloc(repository: SubscribeRepository());
              }),
              BlocProvider(create: (context) {
                return DoctorDetailsBloc(repository: DoctorDetailsRepository());
              }),
            ],
            child: DoctorProfileScreen(
              arguments: args as GetDoctorIdPageArguments,
            ),
          ),
        );

      default:
        throw RouteException("Route Not found");
    }
  }
}

class RouteException implements Exception {
  final String message;

  const RouteException(this.message);
}
