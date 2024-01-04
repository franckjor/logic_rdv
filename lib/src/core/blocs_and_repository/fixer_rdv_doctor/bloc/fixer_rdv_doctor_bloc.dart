import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/fixer_rdv_doctor/bloc/fixer_rdv_doctor.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/fixer_rdv_doctor/fixer_rdv_doctor_response_repository/fixer_rdv_doctor_repository.dart';

class FixerRdvDoctorBloc
    extends Bloc<FixerRdvDoctorEvent, FixerRdvDoctorState> {
  final FixerRdvDoctorRepository repository;

  FixerRdvDoctorBloc({required this.repository})
      : super(FixerRdvDoctorLoading());

  @override
  FixerRdvDoctorState get initialState => FixerRdvDoctorLoading();

  @override
  Stream<FixerRdvDoctorState> mapEventToState(
      FixerRdvDoctorEvent event) async* {
    yield FixerRdvDoctorLoading();
    if (event is GetFixerRdvDoctor) {
      yield* _mapGetFixerRdvDoctorToState(event);
    }
  }

  Stream<FixerRdvDoctorState> _mapGetFixerRdvDoctorToState(
      GetFixerRdvDoctor event) async* {
    try {
      final userResponse = await repository.fixerRdvDoctorGetItForTokenUser(
          tokenUser: event.tokenUser);
      yield FixerRdvDoctorLoadingSuccess(response: userResponse);
    } catch (error) {
      yield FixerRdvDoctorFailure(error: error.toString())!;
    }
  }
}
