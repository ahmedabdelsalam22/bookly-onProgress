import 'package:bookly/presentation_layer/business_logic/state/MovieState.dart';
import 'package:flutter/material.dart';

import 'list_view_book_item.dart';

class TopRatedListView extends StatelessWidget {
  const TopRatedListView({Key? key, required this.state}) : super(key: key);

  final GetBooksSuccessState state;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var bookModel = state.bookModel[index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: ListViewBookItem(
              title: '${bookModel.title}',
              description: '${bookModel.description}',
              genreName: '${bookModel.genreName}',
              price: bookModel.price!.toInt(),
              reviewNumbers: bookModel.reviewersNumbers!.toInt(),
              rate: bookModel.rate!.toDouble(),
            ),
          );
        },
        itemCount: state.bookModel.length,
      ),
    );
  }
}
