import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/user/bloc/user.dart';
import 'package:logic_rdv_v0/src/core/models/token_user/token_user.dart';
import 'package:logic_rdv_v0/src/core/models/user_model/user_request.dart';

updateUserAccount(
    {BuildContext context,
    String compte_nom,
    String tokenUser,
    String compte_prenom,
    String compte_email,
    String compte_mobile,
    String compte_codepostal,
    String compte_ville,
    String compte_password,
    String compte_password_conf,
    String compte_adresse}) {
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
  BuildContext context,
  String tokenUser,
}) {
  TokenUser tokenUserRemoved =
      TokenUser((builder) => builder..tokenuser = tokenUser);

  BlocProvider.of<UserBloc>(context)
    ..add(CheckOutUser(tokenUser: tokenUserRemoved));
}
