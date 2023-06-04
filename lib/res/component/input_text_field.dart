import 'package:flutter/material.dart';
import 'package:tech_media/res/color.dart';

class InputTextField extends StatelessWidget {
  const InputTextField(
      {super.key,
      required this.myController,
      required this.focusNode,
      required this.onFieldSubmittedValue,
      required this.onValidator,
      required this.keyBoardType,
      required this.hint,
      required this.obscureText,
      this.enable = true,
      this.autoFocus = false});

  final TextEditingController myController;
  final FocusNode focusNode;
  final FormFieldSetter onFieldSubmittedValue;
  final FormFieldValidator onValidator;
  final TextInputType keyBoardType;
  final String hint;
  final bool obscureText;
  final bool enable, autoFocus;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: myController,
      obscureText: obscureText,
      focusNode: focusNode,
      onFieldSubmitted: onFieldSubmittedValue,
      validator: onValidator,
      keyboardType: keyBoardType,
      decoration: InputDecoration(
          border: OutlineInputBorder(
              borderSide: BorderSide(color: AppColors.textFieldDefaultFocus),
              borderRadius: BorderRadius.all(Radius.circular(15)))),
    );
  }
}
