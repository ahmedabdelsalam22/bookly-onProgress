import 'package:bookly/core/router/router.dart';
import 'package:flutter/material.dart';

import 'core/utilities/color_constants.dart';

void main() async {
/*  NetworkServices networkServices = NetworkServicesImpl();
  RemoteDataSourceImpl remoteDataSourceImpl =
      RemoteDataSourceImpl(networkServices);
  MovieRepository movieRepository = MovieRepositoryImpl(remoteDataSourceImpl);

  var movies = await movieRepository.getAllMovies();
  print(movies.toString());*/

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    );
  }
}
