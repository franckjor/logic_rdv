import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/fixer_rdv_doctor/bloc/fixer_rdv_doctor.dart';
import 'package:logic_rdv_v0/src/core/models/token_user/token_user.dart';

getFixerRdvDoctorList({BuildContext context, String tokenUser}) {
  TokenUser _tokenUser = TokenUser((builder) => builder
    ..tokenuser = tokenUser);
  BlocProvider.of<FixerRdvDoctorBloc>(context)
    ..add(GetFixerRdvDoctor(tokenUser: _tokenUser));
}
