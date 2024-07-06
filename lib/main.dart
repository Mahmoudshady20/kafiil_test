import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/sign_up_view.dart';
import 'package:kafiil_test/feature/authentication_feature/login_view.dart';
import 'package:kafiil_test/shared/theme_data/my_theme_data.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: LoginView.routeName,
      theme: MyThemeData.myTheme,
      routes: {
        LoginView.routeName : (context)=> const LoginView(),
        SignUpView.routeName : (context)=> const SignUpView()
      },
    );
  }
}


