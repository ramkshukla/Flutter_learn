import 'package:flutter/material.dart';
import 'package:flutterlearn/module/splash/splash_screen.dart';
import 'package:flutterlearn/module/tutorial/view/tutorial_screen.dart';
import 'package:flutterlearn/util/helper/app_string.dart';

import 'module/route/route.dart';
import 'module/signup/view/signup_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: AppString.appTitle,
        initialRoute: RouteClass.splashScreen,
        routes: {
          RouteClass.splashScreen: (context) => const SplashScreen(),
          RouteClass.signupForm: (context) => const SignupForm(),
          RouteClass.tutorial: (context) => const PageViewApp()
        });
  }
}
