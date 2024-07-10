import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_email_address.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_name_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_password_field.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/radio_button_widget.dart';
typedef MyRadio = String? Function(String?)?;
typedef MyValidator = String? Function(String?)?;
class SignUpStepOne extends StatelessWidget {
  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController confirmPasswordController;
  final MyRadio sellerRadio;
  final MyRadio buyerRadio;
  final MyRadio bothRadio;
  final String typeSelectedRole;
  final MyValidator firstNameValidator;
  final MyValidator lastNameValidator;
  final MyValidator emailNameValidator;
  final MyValidator passwordValidator;
  final MyValidator confirmPasswordValidator;
  const SignUpStepOne({super.key,required this.passwordValidator,required this.confirmPasswordValidator,required this.emailNameValidator,required this.firstNameController,required this.lastNameController,required this.emailController,required this.passwordController,required this.confirmPasswordController,required this.typeSelectedRole,required this.sellerRadio,required this.bothRadio,required this.buyerRadio,required this.firstNameValidator,required this.lastNameValidator});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomNameWidget(firstNameController: firstNameController, lastNameController: lastNameController,firstNameValidator: firstNameValidator,lastNameValidator: lastNameValidator,),
        CustomEmailAddress(emailController: emailController,paddingHorizontal: 0.01,emailValidator: emailNameValidator,),
        CustomPasswordField(passwordController: passwordController, label: 'Password',padding: 0.01,passwordValidator: passwordValidator,),
        CustomPasswordField(passwordController: confirmPasswordController, label: 'Confirm Password',padding: 0.01,passwordValidator: confirmPasswordValidator,),
        RadioButtonWidget(typeSelectedRole: typeSelectedRole,sellerRadio: sellerRadio,bothRadio: bothRadio,buyerRadio: buyerRadio,)
      ],
    );
  }
}
