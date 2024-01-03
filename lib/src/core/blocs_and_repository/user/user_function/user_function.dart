import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/user/bloc/user.dart';
import 'package:logic_rdv_v0/src/core/models/token_user/token_user.dart';
import 'package:logic_rdv_v0/src/core/models/user_model/user_request.dart';

updateUserAccount(
    {required BuildContext context,
    required String compte_nom,
    required String tokenUser,
    required String compte_prenom,
    required String compte_email,
    required String compte_mobile,
    required String compte_codepostal,
    required String compte_ville,
    required String compte_password,
    required String compte_password_conf,
    required String compte_adresse}) {
  UserRequest updateAccountRequest = UserRequest((builder) => builder
    ..compteAdresse = compte_adresse
    ..tokenuser = tokenUser
    ..compteCodepostal = compte_codepostal
    ..compteEmail = compte_email
    ..compteMobile = compte_mobile
    ..compteNom = compte_nom
    ..comptePassword = compte_password
    ..comptePasswordConf = compte_password_conf
    ..comptePrenom = compte_prenom
    ..compteVille = compte_ville);

  BlocProvider.of<UserBloc>(context)
    ..add(UpdateUser(userRequest: updateAccountRequest));
}

checkoutUserAccount({
  required BuildContext context,
  required String tokenUser,
}) {
  TokenUser tokenUserRemoved =
      TokenUser((builder) => builder..tokenuser = tokenUser);

  BlocProvider.of<UserBloc>(context)
    ..add(CheckOutUser(tokenUser: tokenUserRemoved));
}
