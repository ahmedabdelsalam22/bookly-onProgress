import 'package:bookly/presentation_layer/view/splash_view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'core/utilities/color_constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: ColorConstants.kPrimaryColor,
        primarySwatch: Colors.blue,
      ),
      home: const SplashView(),
    );
  }
}
