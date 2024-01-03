import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;

import '../../common.dart';

bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

bool get isWeb => foundation.kIsWeb;

class AdaptativeAppBar extends StatelessWidget implements PreferredSize {
  final String title;
  final Color backgroundColor;
  final Widget leading;
  final List<Widget> actions;
  const AdaptativeAppBar({
    Key key,
    this.title,
    this.backgroundColor = AppColors.primaryColor,
    this.leading,
    this.actions,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (isAndroid || isWeb)
      return AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          title ?? '',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        centerTitle: true,
        leading: leading,
        actions: actions,
      );
    else
      return CupertinoNavigationBar(
        brightness: Brightness.dark,
        border: Border.all(width: 0, color: Colors.transparent),
        backgroundColor: backgroundColor,
        leading: leading,
        middle: Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w700,
            color: Colors.white,
          ),
        ),
        trailing: actions == null
            ? SizedBox()
            : Material(
                elevation: 0,
                color: Colors.transparent,
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: actions,
                ),
              ),
      );
  }

  @override
  Widget get child => SizedBox();

  @override
  Size get preferredSize => new Size.fromHeight(AppBar().preferredSize.height);
}
