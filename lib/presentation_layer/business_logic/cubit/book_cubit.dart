import 'package:bookly/data/model/books_by_genres_model.dart';
import 'package:bookly/data/model/genre_model.dart';
import 'package:bookly/domain/repository/book_repository.dart';
import 'package:bookly/domain/repository/books_by_genre_repository.dart';
import 'package:bookly/domain/repository/genres_repository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/book_model.dart';
import '../state/BookState.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(this._bookRepository, this._genresRepository,
      this._booksByGenreRepository)
      : super(BookInitial());

  final BookRepository _bookRepository;
  final GenresRepository _genresRepository;
  final BooksByGenreRepository _booksByGenreRepository;

  static BookCubit get(context) => BlocProvider.of(context);

  List<BookModel>? bookModel;

  void loadBooks() {
    emit(GetBooksLoadingState());
    _bookRepository.getAllBooks().then((value) {
      emit(GetBooksSuccessState());
      bookModel = value;
      debugPrint("Books loaded");
    }).catchError((onError) {
      emit(GetBooksErrorState());
      debugPrint("Books not loaded $onError");
    });
  }

  List<GenreModel>? genreModel;

  void loadGenres() {
    emit(GetGenresLoadingState());
    _genresRepository.getAllGenres().then((value) {
      emit(GetGenresSuccessState());
      genreModel = value;
      debugPrint("Genres loaded");
    }).catchError((onError) {
      emit(GetGenresErrorState());
      debugPrint("Genres not loaded $onError");
    });
  }

  List<BooksByGenresModel>? booksByGenresModel;

  void loadBooksByGenre(String genreName) {
    emit(BooksByGenreLoadingState());
    _booksByGenreRepository.getBooksByGenre(genreName).then((value) {
      emit(BooksByGenreSuccessState());
      booksByGenresModel = value;
      debugPrint("load BooksByGenre");
    }).catchError((onError) {
      emit(BooksByGenreErrorState());
      debugPrint("BooksByGenre not found $onError");
    });
  }
}
