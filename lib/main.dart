import 'package:bookly/presentation_layer/view/splash_view/splash_screen.dart';
import 'package:flutter/material.dart';

import 'core/utilities/color_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      theme: ThemeData(
        backgroundColor: ColorConstants.kPrimaryColor,
        textTheme: ThemeData.dark().textTheme,
        fontFamily: 'pro',
      ),
      home: const SplashView(),
    );
  }
}
