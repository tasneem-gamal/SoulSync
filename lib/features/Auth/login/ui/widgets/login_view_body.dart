import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/theming/colors_manger.dart';
import 'package:soulsync/core/theming/styles.dart';
import 'package:soulsync/core/widgets/constants.dart';
import 'package:soulsync/core/widgets/custom_button.dart';
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
            SizedBox(height: 60.h,),
            const CustomButton(text: 'Login'),
            Row(
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
            )
          ],
        ),
      ),
    );
  }
}

