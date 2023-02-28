import 'package:bookly/data/model/book_model.dart';

import '../../../data/model/genre_model.dart';
import '../../../data/model/searchModel.dart';

abstract class BookState {}

class BookInitial extends BookState {}

class GetBooksLoadingState extends BookState {}

class GetBooksSuccessState extends BookState {
  final List<BookModel> bookModel;

  GetBooksSuccessState(this.bookModel);
}

class GetBooksErrorState extends BookState {}

class GetGenresLoadingState extends BookState {}

class GetGenresSuccessState extends BookState {
  final List<GenreModel> genreModel;

  GetGenresSuccessState(this.genreModel);
}

class GetGenresErrorState extends BookState {}

class GetSearchLoadingState extends BookState {}

class GetSearchSuccessState extends BookState {
  final List<SearchModel> searchModel;

  GetSearchSuccessState(this.searchModel);
}

class GetSearchErrorState extends BookState {}
