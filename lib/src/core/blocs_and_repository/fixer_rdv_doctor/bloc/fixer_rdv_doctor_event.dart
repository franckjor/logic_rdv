import 'package:equatable/equatable.dart';
import 'package:logic_rdv_v0/src/core/models/token_user/token_user.dart';

abstract class FixerRdvDoctorEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class GetFixerRdvDoctor extends FixerRdvDoctorEvent {
  final TokenUser tokenUser;

  GetFixerRdvDoctor({this.tokenUser});

  @override
  List<Object> get props => [tokenUser];

  @override
  String toString() => 'GetFixerRdvDoctor {tokenUser: $tokenUser}';
}
