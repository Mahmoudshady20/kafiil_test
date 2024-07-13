import 'package:flutter/material.dart';
import 'package:kafiil_test/core/utils/validations_regex.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_appbar_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_auth_button.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_email_address.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_password_field.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/have_account_login.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/login_image.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/remember_forget_row.dart';
import 'package:kafiil_test/feature/home_feature/home_view.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late bool checkBox;
  late GlobalKey<FormState> formKey;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    checkBox = true;
    formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomAppbarWidget(
                  titleName: 'Account Login',
                ),
                const LoginImage(),
                CustomEmailAddress(emailController: emailController,paddingHorizontal: 0.05,emailValidator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return 'Please enter your Email';
                  }
                  if (!ValidationRegex.emailRegex(value)) {
                    return 'Please enter Valid Email';
                  }
                  return null;
                },),
                CustomPasswordField(
                  padding: 0.05,
                  passwordController: passwordController,
                  label: 'password',
                  passwordValidator: (value){
                    if (value == null || value.trim().isEmpty) {
                      return 'Please enter your Password';
                    }
                    if(passwordController.text.length <8){
                      return 'Your password must be at least 8 characters';
                    }
                    if (!ValidationRegex.passwordRegex(value)){
                      return 'Your password must consist of a lowercase letter, an uppercase letter, and a number';
                    }
                    return null;
                  },
                ),
                RememberForgetRow(
                    value: checkBox,
                    onChanged: (value) {
                      setState(() {
                        checkBox = value!;
                      });
                    }),
                CustomAuthButton(
                  buttonLabel: 'Login',
                  onPressed: () {
                    login();
                  },
                  width: 1,
                ),
                const HaveAccountLogin()
              ],
            ),
          ),
        ),
      ),
    );
  }
  login(){
    if(!formKey.currentState!.validate()){
      return;
    }
    Navigator.pushReplacementNamed(context, HomeView.routeName);
  }
}
