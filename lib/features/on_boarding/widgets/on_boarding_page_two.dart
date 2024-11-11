import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/theming/styles.dart';

class OnBoardingPageTwo extends StatelessWidget {
  const OnBoardingPageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset('assets/images/onboarding-two.jpg'),
        SizedBox(
          height: 67.h,
        ),
        Text(
          'Raise the awareness of mental health ',
          style: Styles.textStyle16RegularBlack,
        ),
        Text(
          'issues.',
          style: Styles.textStyle16RegularBlack,
        ),
      ],
    );
  }
}
