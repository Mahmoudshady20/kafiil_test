import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/widget/custom_appbar_widget.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            CustomAppbarWidget(titleName: 'Account Login')
          ],
        ),
      ),
    );
  }
}
