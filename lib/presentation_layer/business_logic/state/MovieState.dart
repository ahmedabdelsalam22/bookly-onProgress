import 'package:bookly/data/model/book_mchModel.dart';

abstract class BookState {}

class BookInitial extends BookState {}

class GetBooksLoadingState extends BookState {}

class GetBooksSuccessState extends BookState {
  final List<BookModel> bookModel;

  GetBooksSuccessState(this.bookModel);
}

class GetBooksErrorState extends BookState {}

class GetGenresLoadingState extends BookState {}

class GetGenresSuccessState extends BookState {}

class GetGenresErrorState extends BookState {}

class GetSearchLoadingState extends BookState {}

class GetSearchSuccessState extends BookState {}

class GetSearchErrorState extends BookState {}
