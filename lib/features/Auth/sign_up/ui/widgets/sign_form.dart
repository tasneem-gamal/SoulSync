import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/widgets/custom_button.dart';
import 'package:soulsync/core/widgets/custom_text_form_field.dart';
import 'package:soulsync/features/Auth/login/ui/widgets/title_of_text_field.dart';

class SignForm extends StatelessWidget {
  const SignForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          const TitleOfTextField(title: 'Name'),
          const SizedBox(height: 12,),
          CustomTextFormField(validator: (value){}),
          SizedBox(height: 16.h,),
          const TitleOfTextField(title: 'Email Address',),
          const SizedBox(height: 12,),
          CustomTextFormField( validator: (value){}),
          SizedBox(height: 16.h,),
          const TitleOfTextField(title: 'Password'),
          const SizedBox(height: 12,),
          CustomTextFormField( validator: (value){}),
          SizedBox(height: 16.h,),
          const TitleOfTextField(title: 'Confirm Password'),
          const SizedBox(height: 12,),
          CustomTextFormField( validator: (value){}),
          SizedBox(height: 40.h,),
          const CustomButton(text: 'Sign Up'),
        ],
      )
    );
  }
}