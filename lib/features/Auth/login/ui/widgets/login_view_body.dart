import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/widgets/constants.dart';
import 'package:soulsync/features/Auth/login/ui/widgets/dont_have_an_account.dart';
import 'package:soulsync/features/Auth/login/ui/widgets/login_form.dart';
import 'package:soulsync/features/Auth/login/ui/widgets/welcome_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

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
            const WelcomeText(),
            SizedBox(height: 40.h,),
            const LoginForm(),
            const DontHaveAnAccount()
          ],
        ),
      ),
    );
  }
}



