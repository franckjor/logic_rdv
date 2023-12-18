import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logic_rdv_v0/src/core/blocs_and_repository/subcribe_notification/bloc/subcribe.dart';
import 'package:logic_rdv_v0/src/core/models/subscribe_notification/subscribe_request.dart';

subscribe({
  BuildContext context,
  String tokenuser,
  String installationkey,
}) {
  SubscribeRequest subscribe = SubscribeRequest((builder) => builder
      ..tokenuser = tokenuser
      ..installationkey = installationkey
  );
    BlocProvider.of<SubscribeBloc>(context)
      ..add(Subscribe(subscribeRequest: subscribe));
  
}

unSubscribe({
  BuildContext context,
  String tokenuser,
  String installationkey,
}) {
  SubscribeRequest subscribe = SubscribeRequest((builder) => builder
      ..tokenuser = tokenuser
      ..installationkey = installationkey
  );
    BlocProvider.of<SubscribeBloc>(context)
      ..add(UnSubscribe(subscribeRequest: subscribe));

}
isSubscribe({
  BuildContext context,
  String tokenuser,
  String installationkey,
}) {
  SubscribeRequest subscribe = SubscribeRequest((builder) => builder
      ..tokenuser = tokenuser
      ..installationkey = installationkey
  );
    BlocProvider.of<SubscribeBloc>(context)
      ..add(IsSubscribe(subscribeRequest: subscribe));

}