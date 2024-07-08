import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_email_address.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_name_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_password_field.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/radio_button_widget.dart';

class SignUpStepOne extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  const SignUpStepOne({super.key,required this.firstNameController,required this.lastNameController,required this.emailController,required this.passwordController,required this.confirmPasswordController});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomNameWidget(firstNameController: firstNameController, lastNameController: lastNameController,),
        CustomEmailAddress(emailController: emailController,paddingHorizontal: 0.01,),
        CustomPasswordField(passwordController: passwordController, label: 'Password',padding: 0.01,),
        CustomPasswordField(passwordController: confirmPasswordController, label: 'Confirm Password',padding: 0.01,),
        RadioButtonWidget()
      ],
    );
  }
}
