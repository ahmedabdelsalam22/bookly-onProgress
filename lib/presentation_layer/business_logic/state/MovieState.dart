import 'package:bookly/data/model/book_model.dart';

abstract class MovieState {}

class MovieInitial extends MovieState {}

class GetMoviesLoadingState extends MovieState {}

class GetMoviesSuccessState extends MovieState {
  final List<BookModel> book;

  GetMoviesSuccessState(this.book);
}

class GetMoviesErrorState extends MovieState {}
