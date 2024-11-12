import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/theming/styles.dart';
import 'package:soulsync/core/widgets/constants.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20.w),
              child: Image.asset('assets/images/logo-soul.png'),
            ),
            Text(
            'Get Started Now!',
            style: Styles.textStyle16Medium,
            ),
          ],
        ),
      ),
    );
  }
}