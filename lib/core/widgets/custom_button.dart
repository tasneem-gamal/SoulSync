import 'package:flutter/material.dart';
import 'package:soulsync/core/theming/colors_manger.dart';
import 'package:soulsync/core/theming/styles.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.onPressed, required this.text});

  final Function()? onPressed;
  final String text;
  
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 52,
      child: TextButton(
          onPressed: onPressed,
          style: TextButton.styleFrom(
              backgroundColor: ColorsManger.primaryColor,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16))),
          child: Text(
            text,
            style: Styles.textStyle16Medium.copyWith(color: Colors.white),
          )),
    );
  }
}
