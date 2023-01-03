import 'package:flutter/material.dart';

import 'custom_boo_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: const [
          CustomBookDetailsAppBar(),
        ],
      ),
    );
  }
}
