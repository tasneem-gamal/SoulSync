import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/widgets/custom_text_form_field.dart';
import 'package:soulsync/features/Auth/login/ui/widgets/email_title_of_text_field.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const TitleOfTextField(title: 'Email Address',),
          const SizedBox(height: 12,),
          CustomTextFormField( validator: (value){}),
          SizedBox(height: 16.h,),
          const TitleOfTextField(title: 'Password'),
          const SizedBox(height: 12,),
          CustomTextFormField( validator: (value){})
        ],
      ),
    );
  }
}
