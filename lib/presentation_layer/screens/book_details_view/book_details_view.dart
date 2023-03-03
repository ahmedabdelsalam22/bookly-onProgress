import 'package:bookly/data/model/book_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utilities/color_constants.dart';
import '../../../core/utilities/text_styles.dart';
import '../../business_logic/cubit/book_cubit.dart';
import '../../business_logic/state/BookState.dart';
import '../../widgets/custom_book_image.dart';
import '../../widgets/widget_rating.dart';
import 'custom_book_details_app_bar.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.bookModel});

  final BookModel bookModel;

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return BlocConsumer<BookCubit, BookState>(
      listener: (context, state) {
        // TODO: implement listener
      },
      builder: (context, state) {
        //  var cubit = BookCubit.get(context);
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
                      child: const CustomBookImage(
                        url: '',
                      ),
                    ),
                    const SizedBox(
                      height: 43,
                    ),
                    Text(
                      '${bookModel.title}',
                      style: AppTextStyles.textStyle30.copyWith(
                          fontFamily: 'sectra', fontWeight: FontWeight.w700),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Opacity(
                      opacity: .7,
                      child: Text(
                        '${bookModel.genreName}',
                        style: AppTextStyles.textStyle18.copyWith(
                            fontWeight: FontWeight.w500,
                            fontStyle: FontStyle.italic),
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    BookRating(
                      rate: bookModel.rate!.toDouble(),
                      reviewersNumbers: bookModel.reviewersNumbers!.toInt(),
                    ),
                    const SizedBox(
                      height: 25,
                    ),
                    //  const BookActionButton(),
                    const SizedBox(
                      height: 50,
                    ),
                    Align(
                      alignment: AlignmentDirectional.topStart,
                      child: Text(
                        '${bookModel.quote}',
                        style: AppTextStyles.textStyle14
                            .copyWith(fontWeight: FontWeight.w600),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
