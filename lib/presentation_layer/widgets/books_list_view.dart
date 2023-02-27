import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class BooksListView extends StatelessWidget {
  const BooksListView({Key? key, required this.height}) : super(key: key);

  final double height;

  @override
  Widget build(BuildContext context) {
    return moviesPosters();
  }

  Widget moviesPosters() {
    return SizedBox(
      height: height,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: CustomBookImage(),
          );
        },
        itemCount: 5,
      ),
    );
  }
}
