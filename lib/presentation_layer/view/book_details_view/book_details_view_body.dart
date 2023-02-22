import 'package:flutter/material.dart';

import '../../../core/utilities/text_styles.dart';
import '../../widgets/custom_book_image.dart';
import '../../widgets/widget_rating.dart';
import 'custom_boo_details_app_bar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Column(
        children: [
          const CustomBookDetailsAppBar(),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: width * 0.22),
            child: const CustomBookImage(),
          ),
          const SizedBox(
            height: 43,
          ),
          Text(
            'The Jungle Book',
            style: AppTextStyles.textStyle30
                .copyWith(fontFamily: 'sectra', fontWeight: FontWeight.w700),
          ),
          const SizedBox(
            height: 6,
          ),
          Opacity(
            opacity: .7,
            child: Text(
              'Book',
              style: AppTextStyles.textStyle18.copyWith(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic),
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          const BookRating(),
        ],
      ),
    );
  }
}
