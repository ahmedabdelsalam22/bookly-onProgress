import 'package:bookly/presentation_layer/business_logic/cubit/book_cubit.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key, required this.height, required this.cubit})
      : super(key: key);

  final double height;
  final BookCubit cubit;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var model = cubit.bookModel![index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(
              url: '${model.poster}',
            ),
          );
        },
        itemCount: cubit.bookModel!.length,
      ),
    );
  }
}
