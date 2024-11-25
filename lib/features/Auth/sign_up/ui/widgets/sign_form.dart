import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:soulsync/core/helpers/app_regex.dart';
import 'package:soulsync/core/widgets/custom_button.dart';
import 'package:soulsync/core/widgets/custom_text_form_field.dart';
import 'package:soulsync/features/Auth/login/ui/widgets/title_of_text_field.dart';

class SignForm extends StatefulWidget {
  const SignForm({super.key});

  @override
  State<SignForm> createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordConfirmController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  final GlobalKey<FormState> formKey = GlobalKey();
  bool isObsecureText = true;
  bool isPasswordConfirmationObscureText = true;
  
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
          const TitleOfTextField(title: 'Name'),
          const SizedBox(height: 12,),
          CustomTextFormField(
            controller: nameController,
            validator: nameValidate
          ),
          SizedBox(height: 16.h,),
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
            validator: passwordValidate,
            isObsecureText: isObsecureText,
            suffixIcon: GestureDetector(
              onTap: (){
                setState(() {
                  isObsecureText = !isObsecureText;
                });
              },
              child: Icon(isObsecureText ? Icons.visibility_off : Icons.visibility,)
            ),
          ),
          SizedBox(height: 16.h,),
          const TitleOfTextField(title: 'Confirm Password'),
          const SizedBox(height: 12,),
          CustomTextFormField( 
            controller: passwordConfirmController,
            validator: confirmPasswordValidate,
            isObsecureText: isPasswordConfirmationObscureText,
            suffixIcon: GestureDetector(
              onTap: (){
                setState(() {
                  isPasswordConfirmationObscureText = !isPasswordConfirmationObscureText;
                });
              },
              child: Icon(isPasswordConfirmationObscureText ? Icons.visibility_off : Icons.visibility,)
            ),
          ),
          SizedBox(height: 40.h,),
          CustomButton(
            onPressed: signUpVaidate,
            text: 'Sign Up'
          ),
        ],
      )
    );
  }

  signUpVaidate(){
            if(formKey.currentState!.validate()){
              formKey.currentState!.save();
            } else{
              setState(() {
              autovalidateMode = AutovalidateMode.always;
            });
            }
          }

  confirmPasswordValidate(value){
            if(value == null || value.isEmpty){
              return 'Password cannot be empty';
            }
            if(value == passwordController.text){
              return 'Passwords match';
            } else{
              return 'Passwords do not match';
            }
          }

  nameValidate(value){
            if(value == null || value.isEmpty){
              return 'Name cannot be empty';
            }
          }

  emailValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Email cannot be empty';
    }
    if (!AppRegex.isEmailValid(value)) {
      return 'Enter a valid email address';
    }
  }

  passwordValidate(value) {
    if (value == null || value.isEmpty) {
      return 'Password cannot be empty';
    }
    if (!AppRegex.hasLowerCase(value) ||
        !AppRegex.hasMinLength(value) ||
        !AppRegex.isPasswordValid(value) ||
        !AppRegex.hasSpecialCharacter(value)) {
      return "Enter a valid password: at least 6 characters,\n including one uppercase letter and one special char.";
    }
  }
}