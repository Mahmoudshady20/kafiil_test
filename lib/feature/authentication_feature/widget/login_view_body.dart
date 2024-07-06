import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_appbar_widget.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/login_image.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppbarWidget(titleName: 'Account Login',),
            LoginImage()
          ],
        ),
      ),
    );
  }
}
