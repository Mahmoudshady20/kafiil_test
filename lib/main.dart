import 'package:flutter/material.dart';
import 'package:kafiil_test/feature/authentication_feature/data/user_provider.dart';
import 'package:kafiil_test/feature/authentication_feature/sign_up_view.dart';
import 'package:kafiil_test/feature/authentication_feature/login_view.dart';
import 'package:kafiil_test/feature/home_feature/home_view.dart';
import 'package:kafiil_test/shared/theme_data/my_theme_data.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    ChangeNotifierProvider<UserProvider>(
      create: (context) => UserProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: HomeView.routeName,
      theme: MyThemeData.myTheme,
      routes: {
        LoginView.routeName: (context) => const LoginView(),
        SignUpView.routeName: (context) => const SignUpView(),
        HomeView.routeName: (context)=> const HomeView(),
      },
    );
  }
}
