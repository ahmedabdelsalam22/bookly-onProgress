import 'package:bookly/core/utilities/color_constants.dart';
import 'package:bookly/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';

import '../home_view/best_seller/list_view_book_item.dart';

class SeeAllView extends StatelessWidget {
  const SeeAllView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.kPrimaryColor,
        centerTitle: true,
        title: Text(
          'All Books',
          style: AppTextStyles.textStyle18.copyWith(color: Colors.white),
        ),
      ),
      body: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: ListViewBookItem(),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
