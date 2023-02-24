import 'package:bookly/data/model/movie_model.dart';

abstract class MovieState {}

class MovieInitial extends MovieState {}

class GetMoviesLoadingState extends MovieState {}

class GetMoviesSuccessState extends MovieState {
  final List<Movie> movie;

  GetMoviesSuccessState(this.movie);
}

class GetMoviesErrorState extends MovieState {}
