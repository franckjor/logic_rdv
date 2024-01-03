import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/version/bloc/version.dart';

getVersionApp({required BuildContext context}) {
  BlocProvider.of<VersionBloc>(context)
    ..add(VersionRequestEvent());
}
