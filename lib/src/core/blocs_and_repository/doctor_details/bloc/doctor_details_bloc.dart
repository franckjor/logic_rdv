import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/doctor_details/bloc/doctor_details.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/doctor_details/repository/doctor_details_repositopry.dart';

class DoctorDetailsBloc extends Bloc<DoctorDetailsEvent, DoctorDetailsState> {
  final DoctorDetailsRepository repository;

  DoctorDetailsBloc({required this.repository}) : super(DoctorDetailsLoading());

  @override
  Stream<DoctorDetailsState> mapEventToState(DoctorDetailsEvent event) async* {
    yield DoctorDetailsLoading();
    if (event is GetDoctorDetailsEvent) {
      yield* _mapGetDoctorDetailsToState(event);
    }
  }

  Stream<DoctorDetailsState> _mapGetDoctorDetailsToState(
      GetDoctorDetailsEvent event) async* {
    try {
      final doctorDetails = await repository.getDoctorDetails(
          searchDoctorDetail: event.doctorDetailsResponse);
      yield DoctorDetailsLoadingSuccess(response: doctorDetails);
    } catch (error) {
      yield DoctorDetailsFailure(error: error.toString())!;
    }
  }
}
