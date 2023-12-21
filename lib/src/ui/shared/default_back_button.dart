import 'package:logic_rdv_v0/src/common.dart';

class DefaultBackButton extends StatelessWidget {
  final void Function()? onPressed;

  DefaultBackButton({this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: IconButton(
        splashRadius: 20,
        icon:  Icon(
          Icons.arrow_back_ios,
          size: 20,
          color: Colors.white,
        ),
        onPressed:
            onPressed != null ? onPressed : () => Navigator.of(context).pop(),
      ),
    );
  }
}
