import 'package:flutter/material.dart';

import '../../../core/utilities/color_constants.dart';
import 'book_details_view_body.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      body: const SafeArea(
        child: BookDetailsViewBody(),
      ),
    );
  }
}
