import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SocialIcon extends StatelessWidget {
  final String imageUrl;
  final Function onPressed;

  const SocialIcon({
    Key key,
    @required this.imageUrl,
    @required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 30,
      width: 30,
      padding: const EdgeInsets.only(right: 10),
      child: IconButton(
        icon: SvgPicture.asset(imageUrl),
        splashRadius: 16,
        padding: EdgeInsets.zero,
        onPressed: onPressed,
      ),
    );
  }
}
