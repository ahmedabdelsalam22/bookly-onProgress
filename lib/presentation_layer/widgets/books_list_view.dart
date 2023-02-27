import 'package:bookly/presentation_layer/business_logic/state/MovieState.dart';
import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key, required this.height, required this.state})
      : super(key: key);

  final double height;
  final GetBooksSuccessState state;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          var bookModel = state.bookModel[index];

          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(
              url: '${bookModel.poster}',
            ),
          );
        },
        itemCount: state.bookModel.length,
      ),
    );
  }
}
