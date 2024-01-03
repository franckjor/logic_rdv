import 'package:logic_rdv_v0/src/common.dart';

class DefaultTextField extends StatelessWidget {
  final String hintText;
  final Widget suffixIcon;
  final bool obscureText;
  final FocusNode focusNode;
  final TextInputAction textInputAction;
  final TextEditingController controller;
  final Function validator;
  const DefaultTextField({
    super.key,
    this.hintText,
    this.suffixIcon,
    this.obscureText = false,
    this.focusNode,
    this.textInputAction,
    this.controller,
    this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      validator: validator,
      textInputAction: textInputAction,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.colorHintText,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: AppColors.colorHintText,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        disabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.grey,
            width: 0,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        hintText: hintText,
        hintStyle: const TextStyle(
          fontWeight: FontWeight.normal,
          fontSize: 14,
          color: AppColors.colorHintText,
        ),
      ),
    );
  }
}
