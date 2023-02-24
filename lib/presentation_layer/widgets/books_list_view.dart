import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../business_logic/cubit/movie_cubit.dart';
import '../business_logic/state/MovieState.dart';
import 'custom_book_image.dart';

class BooksListView extends StatelessWidget {
  BooksListView({Key? key, required this.height}) : super(key: key);

  double height;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MovieCubit, MovieState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetMoviesLoadingState) {
          return const Center(child: SingleChildScrollView());
        }

        if (state is GetMoviesSuccessState) {
          return moviesPosters(state);
        }

        return const SizedBox();
      },
    );
  }

  Widget moviesPosters(GetMoviesSuccessState state) {
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
        itemCount: state.movie.length,
      ),
    );
  }
}
