import 'package:flutter/material.dart';

import '../../../../data/model/top_rated_model.dart';
import 'list_view_book_item.dart';

class TopRatedListView extends StatelessWidget {
  const TopRatedListView({Key? key, required this.topRatedModel})
      : super(key: key);

  final List<TopRatedModel>? topRatedModel;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          var model = topRatedModel![index];

          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 5),
            child: ListViewBookItem(
              title: '${model.title}',
              description: '${model.description}',
              genreName: '${model.genreName}',
              price: model.price!.toInt(),
              reviewNumbers: model.reviewersNumbers!.toInt(),
              rate: model.rate!.toDouble(),
            ),
          );
        },
        itemCount: topRatedModel!.length,
      ),
    );
  }
}
