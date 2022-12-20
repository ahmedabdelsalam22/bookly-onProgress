import 'package:flutter/material.dart';

import '../../../core/utilities/assets_paths.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(AssetPath.logoImagePath),
        ],
      ),
    );
  }
}
