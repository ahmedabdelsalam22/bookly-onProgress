import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../core/utilities/assets_paths.dart';
import '../view/book_details_view/book_details_view.dart';

class CustomBookItem extends StatelessWidget {
  const CustomBookItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.to(const BookDetailsView());
      },
      child: AspectRatio(
        aspectRatio: 2.7 / 4,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            color: Colors.red,
            image: const DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage(
                AssetPath.bookImage,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
