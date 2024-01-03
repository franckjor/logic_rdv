import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/core/bloc/navigation/navigation_bloc.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

import '../../../common.dart';

class RdvIsValidatePageArguments implements PagesArgumentType {
  final String messageSuccess;

  RdvIsValidatePageArguments({
    this.messageSuccess,
  });

  @override
  getArguments() {
    return this;
  }
}

class RdvIsValidate extends StatefulWidget {
  final RdvIsValidatePageArguments arguments;

  RdvIsValidate({this.arguments});

  @override
  _RdvIsValidateState createState() => _RdvIsValidateState();
}

class _RdvIsValidateState extends State<RdvIsValidate> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Navigator.of(context).pushNamedAndRemoveUntil(
          RouteGenerator.appointmentScreen,
          ModalRoute.withName(RouteGenerator.homeScreen),
        );
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: const Color(0xFFF3F4ED),
        body: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Container(
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 12),
                    child: Text(
                      widget.arguments.messageSuccess,
                      style: TextStyle(
                        fontSize: 16,
                        color: Color(0xFF7C8B88),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    children: [
                      Expanded(
                        child: DialogButton(
                          child: Text(
                            'Prendre un nouveau rdv',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          onPressed: () => Navigator.of(context)
                              .pushNamedAndRemoveUntil(
                                  RouteGenerator.homeScreen,
                                  ModalRoute.withName(
                                      RouteGenerator.appointmentScreen)),
                        ),
                      ),
                      DialogButton(
                        width: 70,
                        child: Text(
                          'Quitter',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        onPressed: () =>
                            Navigator.of(context).pushNamedAndRemoveUntil(
                          RouteGenerator.appointmentScreen,
                          ModalRoute.withName(RouteGenerator.homeScreen),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
