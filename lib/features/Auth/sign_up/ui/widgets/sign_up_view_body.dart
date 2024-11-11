import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/theming/styles.dart';
import 'package:soulsync/core/widgets/constants.dart';
import 'package:soulsync/core/widgets/custom_button.dart';
import 'package:soulsync/features/Auth/sign_up/ui/widgets/already_have_an_account.dart';
import 'package:soulsync/features/Auth/sign_up/ui/widgets/sign_form.dart';

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
            SizedBox(height: 40.h,),
            const SignForm(),
            SizedBox(height: 40.h,),
            const CustomButton(text: 'Sign Up'),
            const AlreadyHaveAnAccount()
          ],
        ),
      ),
    );
  }
}