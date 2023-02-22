import 'package:flutter/material.dart';

import 'custom_book_image.dart';

class BooksListView extends StatelessWidget {
  BooksListView({Key? key, required this.height}) : super(key: key);

  double height;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .3,
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
