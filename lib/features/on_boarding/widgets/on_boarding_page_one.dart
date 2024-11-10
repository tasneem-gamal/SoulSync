import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/theming/styles.dart';

class OnBoardingPageOne extends StatelessWidget {
  const OnBoardingPageOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/onboarding-one.jpg'),
        SizedBox(
          height: 67.h,
        ),
        Text(
          'Your mental health is just as important ',
          style: Styles.textStyle16RegularBlack,
        ),
        Text(
          'as your physical health.',
          style: Styles.textStyle16RegularBlack,
        ),
      ],
    );
  }
}
