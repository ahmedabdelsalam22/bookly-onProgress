import 'package:bookly/presentation_layer/business_logic/cubit/book_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'core/router/router.dart';
import 'core/services/network_services.dart';
import 'core/utilities/color_constants.dart';
import 'data/data_source/data_source.dart';
import 'domain/repository/movie_repository.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => BookCubit(BookRepositoryImpl(
        RemoteDataSourceImpl(NetworkServicesImpl()),
      ))
        ..loadBooks(),
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
