import 'package:flutter/material.dart';

import '../../../core/utilities/color_constants.dart';

class GenresView extends StatelessWidget {
  const GenresView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.kPrimaryColor,
        centerTitle: true,
        title: const Text("Genres"),
      ),
    );
  }
}
