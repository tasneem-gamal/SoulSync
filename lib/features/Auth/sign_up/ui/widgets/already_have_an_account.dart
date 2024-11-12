import 'package:flutter/material.dart';
import 'package:soulsync/core/theming/colors_manger.dart';
import 'package:soulsync/core/theming/styles.dart';

class AlreadyHaveAnAccount extends StatelessWidget {
  const AlreadyHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Already have an account?',
          style: Styles.textStyle12RegularLightGrey,
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero
          ),
          onPressed: (){
            Navigator.pop(context);
          }, 
          child: Text(
            'Login',
            style: Styles.textStyle14RegularLightGrey.copyWith(
              color: ColorsManger.primaryColor,
              fontWeight: FontWeight.w600
            ),
          )
        )
      ],
    );
  }
}