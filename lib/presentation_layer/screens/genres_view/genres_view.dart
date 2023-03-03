import 'package:bookly/data/model/genre_model.dart';
import 'package:bookly/presentation_layer/business_logic/cubit/book_cubit.dart';
import 'package:bookly/presentation_layer/business_logic/state/BookState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/router/router.dart';
import '../../../core/utilities/color_constants.dart';

class GenresView extends StatelessWidget {
  const GenresView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConstants.kPrimaryColor,
      appBar: AppBar(
        backgroundColor: ColorConstants.kPrimaryColor,
        centerTitle: true,
        title: const Text("Genres"),
      ),
      body: BlocConsumer<BookCubit, BookState>(
        listener: (context, state) {},
        builder: (context, state) {
          var cubit = BookCubit.get(context);
          debugPrint("$state");
          return GenresListView(
            model: cubit.genreModel,
            cubit: cubit,
          );
        },
      ),
    );
  }
}

class GenresListView extends StatelessWidget {
  const GenresListView({Key? key, required this.model, required this.cubit})
      : super(key: key);

  final List<GenreModel>? model;
  final BookCubit cubit;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: model!.length,
      itemBuilder: (context, index) {
        var genre = model![index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListTile(
            title: Text("${genre.name}"),
            trailing: InkWell(
              onTap: () {
                Navigator.pushNamed(context, Routes.kBooksByGenreViewRoute,
                    arguments: genre.name);
              },
              child: const Icon(
                Icons.arrow_forward_ios_rounded,
                color: Colors.white,
              ),
            ),
          ),
        );
      },
    );
  }
}
