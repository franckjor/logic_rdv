import 'package:flutter/cupertino.dart';

import '../../common.dart';


class AdaptativeScaffold extends StatelessWidget {
  final String? title;
  final Widget? leading;
  final Color? backgroundColor;
  final Color? scaffoldBackgroundColor;
  final List<Widget> actions;
  final Widget? appBar;
  final Widget body;
  const AdaptativeScaffold({
    required this.title,
    required this.leading,
    required this.actions,
    this.backgroundColor = AppColors.colorPrimary,
    required this.scaffoldBackgroundColor,
    required this.body,
    required this.appBar,
  });
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: scaffoldBackgroundColor,
        appBar: appBar as PreferredSizeWidget?,
        body: SafeArea(child: body),
      );

  }
}
