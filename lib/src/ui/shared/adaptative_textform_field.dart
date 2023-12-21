import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:logic_rdv_v0/src/common.dart';

class AdaptativeTextFormField extends StatelessWidget {
  final String? hintText;
  final Widget? suffixIcon;
  final TextInputType textInputType;
  final bool obscureText;
  final FocusNode? focusNode;
  final TextInputAction? textInputAction;
  final TextEditingController? controller;
  final String? Function(String?)? validator;
  final Function()? onEditingComplete;
  final Function(String)? onTapeChangeHandler;
  final Function()? onTapeFocusChangeHandler;
  final bool autoFocus;
  final bool readOnly;
   AdaptativeTextFormField({
    Key? key,
    this.hintText,
    this.suffixIcon,
    this.controller,
    this.validator,
    this.autoFocus = false,
    this.obscureText = false,
    this.readOnly = false,
    required this.focusNode,
    this.onEditingComplete,
    required this.textInputAction,
    this.onTapeChangeHandler,
    this.textInputType = TextInputType.text,
    this.onTapeFocusChangeHandler,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: obscureText,
      controller: controller,
      validator: validator,
      focusNode: focusNode,
      autofocus: autoFocus,
      readOnly: readOnly,
      onChanged: onTapeChangeHandler,
      onTap: onTapeFocusChangeHandler,
      onEditingComplete: onEditingComplete,
      textInputAction: textInputAction,
      keyboardType: textInputType,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(fontSize: 14, color: AppColors.colorHintText),
        suffixIcon: suffixIcon,
        fillColor: AppColors.whiteColor,
        filled: true,
        errorBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: Colors.red,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
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
            width: 2,
          ),
          borderRadius: BorderRadius.circular(12),
        ),
        contentPadding: EdgeInsets.only(left: 20),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(
            color: AppColors.colorHintText,
            width: 0,
          ),
        ),
      ),
    );
  }
}
