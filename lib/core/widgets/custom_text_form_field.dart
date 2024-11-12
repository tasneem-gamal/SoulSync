import 'package:flutter/material.dart';
import 'package:soulsync/core/theming/colors_manger.dart';

class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({
    super.key, 
    this.suffixIcon, 
    this.isObsecureText,
    this.controller,
    required this.validator,
    this.onChanged
  }); 
  final Widget? suffixIcon;
  final bool? isObsecureText;
  final TextEditingController? controller;
  final Function(String?) validator;
  final Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (value) {
        return validator(value);
      },
      onChanged: onChanged,
      obscureText: isObsecureText ?? false,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: ColorsManger.moreLightgrey
          )
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: ColorsManger.moreLightgrey
          )
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.white
          )
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red
          )
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(16),
          borderSide: const BorderSide(
            color: Colors.red
          )
        ),
        fillColor: Colors.white,
        filled: true,
        suffixIcon: suffixIcon,
        suffixIconColor: ColorsManger.lightGreyText,
      ),
    );
  }
}