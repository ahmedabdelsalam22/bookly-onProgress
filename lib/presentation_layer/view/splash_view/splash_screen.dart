import 'package:bookly/presentation_layer/view/splash_view/splash_screen_body.dart';
import 'package:flutter/material.dart';

import '../../../core/utilities/color_constants.dart';

class SplashView extends StatelessWidget {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      body: const SplashViewBody(),
    );
  }
}
