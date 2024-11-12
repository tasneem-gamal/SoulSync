import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/widgets/constants.dart';
import 'package:soulsync/features/Auth/login/ui/widgets/welcome_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: Constants.appPadding,
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 20.w),
            child: Image.asset('assets/images/logo-soul.png'),
          ),
          const WelcomeText()
        ],
      ),
    );
  }
}
