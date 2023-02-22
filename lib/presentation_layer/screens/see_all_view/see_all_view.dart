import 'package:bookly/core/utilities/color_constants.dart';
import 'package:bookly/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';

class SeeAllView extends StatelessWidget {
  const SeeAllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      appBar: AppBar(
        title: Text(
          'All Books',
          style: AppTextStyles.textStyle18.copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
