import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/helpers/app_regex.dart';
import 'package:soulsync/core/widgets/custom_button.dart';
import 'package:soulsync/core/widgets/custom_text_form_field.dart';
import 'package:soulsync/features/Auth/login/ui/widgets/title_of_text_field.dart';

class LoginForm extends StatefulWidget {
  const LoginForm({
    super.key,
  });

  @override
  State<LoginForm> createState() => _LoginFormState();
}

class _LoginFormState extends State<LoginForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  
  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          const TitleOfTextField(title: 'Email Address',),
          const SizedBox(height: 12,),
          CustomTextFormField(
            controller: emailController,
            validator: emailValidate
          ),
          SizedBox(height: 16.h,),
          const TitleOfTextField(title: 'Password'),
          const SizedBox(height: 12,),
          CustomTextFormField(
            controller: passwordController,
            validator: (value){
              
            }
          ),
          SizedBox(height: 60.h,),
          CustomButton(
            onPressed: () {
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              } else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                  
                });
              }
            },
              text: 'Login',
            ),
        ],
      ),
    );
  }

  emailValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!AppRegex.isEmailValid(value)) {
      return 'Enter a valid email address';
    }
  }
}
