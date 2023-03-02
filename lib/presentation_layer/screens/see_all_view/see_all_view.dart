import 'package:bookly/core/utilities/color_constants.dart';
import 'package:bookly/core/utilities/text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/router/router.dart';
import '../../business_logic/cubit/book_cubit.dart';
import '../../business_logic/state/MovieState.dart';
import '../../widgets/list_view_book_item.dart';

class SeeAllView extends StatelessWidget {
  const SeeAllView({Key? key}) : super(key: key);

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
      body: BlocConsumer<BookCubit, BookState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BookCubit.get(context);
          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              var book = cubit.bookModel![index];
              return InkWell(
                onTap: () {
                  Navigator.pushNamed(context, Routes.kBookDetailsViewRoute,
                      arguments: book);
                },
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
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
        },
      ),
    );
  }
}
