import 'package:bookly/core/services/network_services.dart';
import 'package:bookly/data/data_source/data_source.dart';
import 'package:bookly/domain/repository/movie_repository.dart';
import 'package:bookly/presentation_layer/business_logic/cubit/book_cubit.dart';
import 'package:bookly/presentation_layer/screens/books_by_genre_view/books_by_genre_view.dart';
import 'package:bookly/presentation_layer/screens/genres_view/genres_view.dart';
import 'package:bookly/presentation_layer/screens/see_all_view/see_all_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../presentation_layer/screens/book_details_view/book_details_view.dart';
import '../../presentation_layer/screens/home_view/home_view.dart';
import '../../presentation_layer/screens/search_view/search_view.dart';
import '../../presentation_layer/screens/splash_view/splash_screen.dart';

class Routes {
  static const String kSplashViewRoute = 'splashView';
  static const String kHomeViewRoute = 'homeView';
  static const String kBookDetailsViewRoute = 'bookDetailsView';
  static const String kSearchViewRoute = 'searchView';
  static const String kSeeAllViewRoute = 'seeAllView';
  static const String kGenresViewRoute = 'genresView';
  static const String kBooksByGenreViewRoute = 'booksByGenreView';
}

NetworkServices networkServices = NetworkServicesImpl();
RemoteDataSourceImpl _remoteDataSourceImpl =
    RemoteDataSourceImpl(networkServices);
BookRepository _bookRepository = BookRepositoryImpl(_remoteDataSourceImpl);

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.kHomeViewRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
              create: (BuildContext context) => BookCubit(_bookRepository),
              child: const HomeView()),
        );

      case Routes.kBookDetailsViewRoute:
        return MaterialPageRoute(builder: (_) => const BookDetailsView());

      case Routes.kSearchViewRoute:
        return MaterialPageRoute(builder: (_) => const SearchView());

      case Routes.kSeeAllViewRoute:
        return MaterialPageRoute(builder: (_) => const SeeAllView());

      case Routes.kGenresViewRoute:
        return MaterialPageRoute(builder: (_) => const GenresView());

      case Routes.kBooksByGenreViewRoute:
        return MaterialPageRoute(builder: (_) => const BooksByGenreView());

      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}
