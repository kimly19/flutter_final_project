import 'package:flutter/material.dart';
import 'package:flutter_project_2/consts/color_consts.dart';

class TextFieldWidget extends StatelessWidget {
  final String text;
  final IconData icon;
  final bool isPasswordType;
  final TextEditingController controller;

  const TextFieldWidget(
      {Key? key,
      required this.text,
      required this.icon,
      required this.isPasswordType,
      required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: isPasswordType,
      autocorrect: isPasswordType,
      enableSuggestions: isPasswordType,
      cursorColor: ColorConsts.dark_brown,
      style: TextStyle(
        color: ColorConsts.white.withOpacity(0.9),
      ),
      decoration: InputDecoration(
        prefixIcon: Icon(
          icon,
          color: ColorConsts.dark_brown,
        ),
        labelText: text,
        labelStyle: TextStyle(
          color: ColorConsts.dark_brown.withOpacity(0.9),
        ),
        filled: true,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        fillColor: ColorConsts.dark_brown.withOpacity(0.3),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30.0),
          borderSide: const BorderSide(
            width: 0,
            style: BorderStyle.none,
          ),
        ),
      ),
      keyboardType: isPasswordType
          ? TextInputType.visiblePassword
          : TextInputType.emailAddress,
    );
  }
}
