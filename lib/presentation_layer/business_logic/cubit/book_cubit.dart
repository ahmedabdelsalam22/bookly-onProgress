import 'package:bookly/domain/repository/movie_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/MovieState.dart';

class BookCubit extends Cubit<BookState> {
  BookCubit(this._bookRepository) : super(BookInitial());

  final BookRepository _bookRepository;

  static BookCubit get(context) => BlocProvider.of(context);

  void getAllBooks() {
    emit(GetBooksLoadingState());
    _bookRepository.getAllBooks().then((value) async {
      final books = await _bookRepository.getAllBooks();
      emit(GetBooksSuccessState(books));
    }).catchError((onError) {
      emit(GetBooksErrorState());
    });
  }
}
