import 'package:flutter/material.dart';
import 'package:untitled4/theme/color_system/app_colors.dart';
import 'package:untitled4/theme/font_system/app_fonts.dart';
import 'package:untitled4/theme/styles_manager.dart';

class CustomTextInputField extends StatelessWidget {
  final String label;
  final int? maxLines;
  final bool autoFocus;
  final Widget? prefix;
  final bool isDisabled;
  final TextInputType type;
  final FormFieldValidator? validator;
  final TextInputAction textInputAction;
  final ValueChanged<String?>? onChanged;
  final TextEditingController? controller;

  const CustomTextInputField({
    Key? key,
    this.prefix,
    this.onChanged,
    this.validator,
    this.controller,
    this.maxLines = 1,
    required this.label,
    this.autoFocus = true,
    this.isDisabled = false,
    this.type = TextInputType.text,
    this.textInputAction = TextInputAction.done,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLines: maxLines,
      keyboardType: type,
      autofocus: autoFocus,
      readOnly: isDisabled,
      onChanged: onChanged,
      validator: validator,
      controller: controller,
      textInputAction: textInputAction,
      //cursorColor: AppColors.colors.primaryColor,
      decoration: InputDecoration(
        filled: true,
        prefix: prefix,
        labelText: label,
        border: InputBorder.none,

        //fillColor: AppColors.colors.strokeColor,
        labelStyle: TextStyle(color: Colors.white),
      ),
      strutStyle: const StrutStyle(forceStrutHeight: false),
      style: StylesManager.medium(fontSize: AppFonts.font.large),
      onTapOutside: (event) => FocusManager.instance.primaryFocus?.unfocus(),
    );
  }
}
