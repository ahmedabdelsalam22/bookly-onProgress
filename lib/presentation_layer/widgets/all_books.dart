import 'package:bookly/presentation_layer/business_logic/cubit/book_cubit.dart';
import 'package:flutter/material.dart';

import '../../core/router/router.dart';
import 'list_view_book_item.dart';

class AllBooks extends StatelessWidget {
  const AllBooks({Key? key, required this.cubit, required this.axis})
      : super(key: key);

  final BookCubit cubit;
  final Axis axis;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: axis,
      physics: const BouncingScrollPhysics(),
      itemBuilder: (context, index) {
        var book = cubit.bookModel![index];
        return InkWell(
          onTap: () {
            Navigator.pushNamed(context, Routes.kBookDetailsViewRoute,
                arguments: book);
          },
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: ListViewBookItem(
              title: '${book.title}',
              description: '${book.description}',
              genreName: '${book.genreName}',
              price: book.price!.toInt(),
              reviewNumbers: book.reviewersNumbers!.toInt(),
              rate: book.rate!.toDouble(),
            ),
          ),
        );
      },
      itemCount: cubit.bookModel!.length,
    );
  }
}
