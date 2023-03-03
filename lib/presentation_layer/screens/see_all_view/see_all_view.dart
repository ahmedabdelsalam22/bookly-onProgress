import 'package:bookly/core/utilities/color_constants.dart';
import 'package:bookly/core/utilities/text_styles.dart';
import 'package:bookly/presentation_layer/business_logic/cubit/book_cubit.dart';
import 'package:flutter/material.dart';

import '../../widgets/all_books.dart';

class SeeAllView extends StatelessWidget {
  const SeeAllView({Key? key, required this.cubit}) : super(key: key);

  final BookCubit cubit;

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
      body: AllBooksView(
        cubit: cubit,
      ),
    );
  }
}
