import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/sign_up_body.dart';

class SignUpView extends StatelessWidget {
  static const String routeName = 'signup_view';
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const SignUpBody();
  }
}
