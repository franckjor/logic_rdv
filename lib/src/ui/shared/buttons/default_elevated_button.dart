import 'package:logic_rdv_v0/src/common.dart';

class DefaultElevatedButton extends StatelessWidget {
  final String text;
  final void Function()? onPressed;
  final Color primary;
  final double height;
  final Color onPrimary;
  const DefaultElevatedButton({
    double textFieldHeight = 0.0,
    Key? key,
    required this.text,
    required this.onPressed,
    this.primary = AppColors.primaryColor,
    this.onPrimary = AppColors.whiteColor,
  })  : height = textFieldHeight,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          elevation: 0,
          primary: primary,
          onPrimary: onPrimary,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          text,
          maxLines: 1,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
