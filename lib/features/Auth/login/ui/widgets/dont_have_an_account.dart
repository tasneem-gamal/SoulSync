import 'package:flutter/material.dart';
import 'package:soulsync/core/theming/colors_manger.dart';
import 'package:soulsync/core/theming/styles.dart';

class DontHaveAnAccount extends StatelessWidget {
  const DontHaveAnAccount({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Don’t have an account?',
          style: Styles.textStyle12RegularLightGrey,
        ),
        TextButton(
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero
          ),
          onPressed: (){}, 
          child: Text(
            'SignUp',
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