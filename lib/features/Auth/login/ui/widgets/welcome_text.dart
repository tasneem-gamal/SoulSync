import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/theming/styles.dart';

class WelcomeText extends StatelessWidget {
  const WelcomeText({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
            'Welcome back!',
            style: Styles.textStyle16Medium,
          ),
          SizedBox(height: 8.h,),
          Text(
            'Enter your details to get login into your account.',
            style: Styles.textStyle14RegularLightGrey.copyWith(
              fontSize: 16,
            ),
            textAlign: TextAlign.center,
          ),
      ],
    );
  }
}