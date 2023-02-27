import 'package:bookly/data/model/book_model.dart';

abstract class BookState {}

class BookInitial extends BookState {}

class GetBooksLoadingState extends BookState {}

class GetBooksSuccessState extends BookState {
  final List<BookModel> bookModel;

  GetBooksSuccessState(this.bookModel);
}

class GetBooksErrorState extends BookState {}
