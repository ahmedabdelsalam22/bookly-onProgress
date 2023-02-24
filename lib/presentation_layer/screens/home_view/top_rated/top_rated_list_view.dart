import 'package:bookly/presentation_layer/business_logic/cubit/movie_cubit.dart';
import 'package:bookly/presentation_layer/business_logic/state/MovieState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'list_view_book_item.dart';

class TopRatedListView extends StatelessWidget {
  const TopRatedListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<MovieCubit, MovieState>(
      listener: (context, state) {},
      builder: (context, state) {
        if (state is GetMoviesLoadingState) {
          return const Center(child: SingleChildScrollView());
        }

        if (state is GetMoviesSuccessState) {
          return topRatedListView(state);
        }

        return const SizedBox();
      },
    );
  }

  Widget topRatedListView(GetMoviesSuccessState state) {
    return Expanded(
      child: ListView.builder(
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return const Padding(
            padding: EdgeInsets.symmetric(vertical: 5),
            child: ListViewBookItem(),
          );
        },
        itemCount: state.movie.length,
      ),
    );
  }
}
