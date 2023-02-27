import 'package:flutter/material.dart';

import '../../../core/utilities/color_constants.dart';
import '../../../core/utilities/text_styles.dart';
import '../../widgets/book_action_button.dart';
import '../../widgets/books_list_view.dart';
import '../../widgets/custom_book_image.dart';
import '../../widgets/widget_rating.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(25.0),
            child: Column(
              children: [
                const CustomBookDetailsAppBar(),
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: width * 0.25),
                  child: const CustomBookImage(),
                ),
                const SizedBox(
                  height: 43,
                ),
                Text(
                  'The Jungle Book',
                  style: AppTextStyles.textStyle30.copyWith(
                      fontFamily: 'sectra', fontWeight: FontWeight.w700),
                ),
                const SizedBox(
                  height: 6,
                ),
                Opacity(
                  opacity: .7,
                  child: Text(
                    'Book',
                    style: AppTextStyles.textStyle18.copyWith(
                        fontWeight: FontWeight.w500,
                        fontStyle: FontStyle.italic),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                const BookRating(),
                const SizedBox(
                  height: 25,
                ),
                const BookActionButton(),
                const SizedBox(
                  height: 50,
                ),
                Align(
                  alignment: AlignmentDirectional.topStart,
                  child: Text(
                    'You can also like this..',
                    style: AppTextStyles.textStyle14
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                ),
                const SizedBox(
                  height: 18,
                ),
                BooksListView(
                  height: MediaQuery.of(context).size.height * .15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
