import 'package:bookly/presentation_layer/business_logic/cubit/book_cubit.dart';
import 'package:bookly/presentation_layer/business_logic/state/MovieState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
          debugPrint("$state");
          if (state is GetGenresSuccessState) {
            return GenresListView(
              state: state,
            );
          }
          return const SizedBox();
        },
      ),
    );
  }
}

class GenresListView extends StatelessWidget {
  const GenresListView({Key? key, required this.state}) : super(key: key);

  final GetGenresSuccessState state;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      // itemCount: state.genreModel.length,
      itemCount: 5,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: ListTile(
            //  title: Text("${state.genreModel[index].name}"),
            title: Text("title"),
            trailing: InkWell(
              onTap: () {
                //  Navigator.pushNamed(ctx, Routes.kBooksByGenreViewRoute);
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
