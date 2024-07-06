import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_appbar_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_auth_button.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_email_address.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_password_field.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/have_account_login.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/login_image.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/remember_forget_row.dart';

class LoginViewBody extends StatefulWidget {
  const LoginViewBody({super.key});

  @override
  State<LoginViewBody> createState() => _LoginViewBodyState();
}

class _LoginViewBodyState extends State<LoginViewBody> {
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late bool checkBox;
  @override
  void initState() {
    emailController = TextEditingController();
    passwordController = TextEditingController();
    checkBox = true;
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
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const CustomAppbarWidget(
                titleName: 'Account Login',
              ),
              const LoginImage(),
              CustomEmailAddress(emailController: emailController),
              CustomPasswordField(
                passwordController: passwordController,
                label: 'password',
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
                onPressed: () {},
              ),
              const HaveAccountLogin()
            ],
          ),
        ),
      ),
    );
  }
}
