import 'package:flutter/material.dart';

import 'list_view_book_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: ListViewBookItem(),
          );
        },
        itemCount: 15,
      ),
    );
  }
}
