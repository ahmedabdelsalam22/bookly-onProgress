import 'package:bookly/data/model/genre_model.dart';
import 'package:bookly/domain/repository/book_repository.dart';
import 'package:bookly/domain/repository/genres_repository.dart';
import 'package:bookly/domain/repository/searchRepository.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../data/model/searchModel.dart';
import '../state/MovieState.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(
      this._bookRepository, this._genresRepository, this._searchRepository)
      : super(BookInitial());

  final BookRepository _bookRepository;
  final GenresRepository _genresRepository;
  final SearchRepository _searchRepository;

  static BookCubit get(context) => BlocProvider.of(context);

  void loadBooks() {
    emit(GetBooksLoadingState());
    _bookRepository.getAllBooks().then((value) {
      emit(GetBooksSuccessState(value));
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
      emit(GetGenresSuccessState(value));
      genreModel = value;
      debugPrint("Genres loaded");
    }).catchError((onError) {
      emit(GetGenresErrorState());
      debugPrint("Genres not loaded $onError");
    });
  }

  List<SearchModel>? searchModel;
  void searchInBooks(String text) {
    emit(GetSearchLoadingState());
    _searchRepository.searchInBooks(text).then((value) {
      emit(GetSearchSuccessState(value));
      debugPrint("Searched Text Found");
    }).catchError((onError) {
      emit(GetSearchErrorState());
      debugPrint("Searched Text Not Found $onError");
    });
  }
}
