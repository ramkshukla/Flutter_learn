import 'package:flutter/material.dart';
import 'package:flutterlearn/util/helper/app_string.dart';

import 'module/signup/view/signup_view.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: AppString.appTitle, home: SignupForm());
  }
}
