import 'package:bookly/domain/repository/books_by_genre_repository.dart';
import 'package:bookly/domain/repository/genres_repository.dart';
import 'package:bookly/presentation_layer/business_logic/cubit/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router/router.dart';
import 'core/services/network_services.dart';
import 'core/utilities/color_constants.dart';
import 'data/data_source/remote_data_source.dart';
import 'domain/repository/book_repository.dart';

void main() {
  runApp(const MyApp());
}

NetworkServices _networkServices = NetworkServicesImpl();
RemoteDataSource _remoteDataSource = RemoteDataSourceImpl(_networkServices);
GenresRepository _genresRepository = GenresRepositoryImpl(_remoteDataSource);
BookRepository _bookRepository = BookRepositoryImpl(_remoteDataSource);

BooksByGenreRepository _booksByGenreRepository =
    BooksByGenreRepositoryImpl(_remoteDataSource);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          BookCubit(_bookRepository, _genresRepository, _booksByGenreRepository)
            ..loadBooks()
            ..loadGenres(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        themeMode: ThemeMode.dark,
        theme: ThemeData(
          backgroundColor: ColorConstants.kPrimaryColor,
          textTheme: ThemeData.dark().textTheme,
          fontFamily: 'pro',
        ),
        onGenerateRoute: AppRouter.generateRoute,
        initialRoute: Routes.kSplashViewRoute,
      ),
    );
  }
}
