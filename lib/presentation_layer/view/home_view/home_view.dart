import 'package:flutter/material.dart';

import '../../../core/utilities/color_constants.dart';
import 'home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      body: const HomeViewBody(),
    );
  }
}
