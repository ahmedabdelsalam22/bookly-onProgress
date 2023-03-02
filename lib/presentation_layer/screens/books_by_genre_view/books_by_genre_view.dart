import 'package:bookly/presentation_layer/business_logic/cubit/book_cubit.dart';
import 'package:bookly/presentation_layer/business_logic/state/MovieState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/utilities/color_constants.dart';
import '../home_view/top_rated/list_view_book_item.dart';

class BooksByGenreView extends StatelessWidget {
  const BooksByGenreView({Key? key, required this.genreName}) : super(key: key);

  final String genreName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.kPrimaryColor,
        centerTitle: true,
        title: const Text("Books"),
      ),
      body: BlocConsumer<BookCubit, BookState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BookCubit.get(context);

          return ListView.builder(
            physics: const BouncingScrollPhysics(),
            itemBuilder: (context, index) {
              var model = cubit.booksByGenresModel![index];

              return Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                child: ListViewBookItem(
                  title: '${model.title}',
                  description: '${model.description}',
                  genreName: '${model.genreName}',
                  price: model.price!.toInt(),
                  reviewNumbers: model.reviewersNumbers!.toInt(),
                  rate: model.rate!.toDouble(),
                  bookModel: cubit.bookModel![index],
                ),
              );
            },
            itemCount: cubit.booksByGenresModel!.length,
          );
        },
      ),
    );
  }
}
