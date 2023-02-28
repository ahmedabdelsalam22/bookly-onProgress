import 'package:bookly/domain/repository/book_repository.dart';
import 'package:bookly/domain/repository/genres_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/MovieState.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(this._bookRepository, this._genresRepository)
      : super(BookInitial());

  final BookRepository _bookRepository;
  final GenresRepository _genresRepository;

  static BookCubit get(context) => BlocProvider.of(context);

  void loadBooks() {
    emit(GetBooksLoadingState());
    _bookRepository.getAllBooks().then((value) {
      emit(GetBooksSuccessState(value));
    }).catchError((onError) {
      emit(GetBooksErrorState());
    });
  }

  void loadGenres() {
    emit(GetGenresLoadingState());
    _genresRepository.getAllGenres().then((value) {
      emit(GetGenresSuccessState(value));
    }).catchError((onError) {
      emit(GetGenresErrorState());
    });
  }
}
