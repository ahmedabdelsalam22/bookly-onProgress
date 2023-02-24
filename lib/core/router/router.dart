import 'package:bookly/core/services/network_services.dart';
import 'package:bookly/data/data_source/data_source.dart';
import 'package:bookly/domain/repository/movie_repository.dart';
import 'package:bookly/presentation_layer/business_logic/cubit/movie_cubit.dart';
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
}

NetworkServices _networkServices = NetworkServicesImpl();
RemoteDataSourceImpl _remoteDataSourceImpl =
    RemoteDataSourceImpl(_networkServices);
MovieRepository _movieRepository = MovieRepositoryImpl(_remoteDataSourceImpl);

class AppRouter {
  static Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.kHomeViewRoute:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => MovieCubit(_movieRepository)..getAllMovies(),
            child: const HomeView(),
          ),
        );

      case Routes.kBookDetailsViewRoute:
        return MaterialPageRoute(builder: (_) => const BookDetailsView());

      case Routes.kSearchViewRoute:
        return MaterialPageRoute(builder: (_) => const SearchView());

      case Routes.kSeeAllViewRoute:
        return MaterialPageRoute(builder: (_) => const SeeAllView());

      default:
        return MaterialPageRoute(builder: (_) => const SplashView());
    }
  }
}
