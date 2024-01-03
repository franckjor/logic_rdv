import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/telecons/bloc/telecons.dart';
import 'package:logic_rdv_v0/src/core/models/telecons_model/teleconsultationrequest.dart';

void getTeleocns({required BuildContext context, required String tokentelecons}) {
  TeleconsRequest _getTelecons =
      TeleconsRequest((builder) => builder..tokentelecons = tokentelecons);

  BlocProvider.of<TeleconsBloc>(context)
    ..add(GetTeleconsEvent(teleconsRequest: _getTelecons));
}
