import 'package:bookly/data/model/book_model.dart';

abstract class BookState {}

class BookInitial extends BookState {}

class GetBooksLoadingState extends BookState {}

class GetBooksSuccessState extends BookState {
  final List<BookModel> book;

  GetBooksSuccessState(this.book);
}

class GetBooksErrorState extends BookState {}
