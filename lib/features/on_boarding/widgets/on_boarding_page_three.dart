import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/theming/styles.dart';

class OnBoardingPageThree extends StatelessWidget {
  const OnBoardingPageThree({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/onboarding-three.jpg'),
        SizedBox(
          height: 67.h,
        ),
        Text(
          'You are not alone in your struggles.',
          style: Styles.textStyle16RegularBlack,
        ),
      ],
    );
  }
}