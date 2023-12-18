import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart' as foundation;

import '../../common.dart';

bool get isWeb => foundation.kIsWeb;
bool get isAndroid =>
    foundation.defaultTargetPlatform == TargetPlatform.android;

class AdaptativeIndicator extends StatelessWidget {
  const AdaptativeIndicator({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return isAndroid || isWeb
        ? SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.pc),
            ),
          )
        : SizedBox(
            height: 30,
            width: 30,
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.pc),
            ),
          );
  }
}
