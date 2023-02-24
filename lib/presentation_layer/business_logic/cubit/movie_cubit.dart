import 'package:bookly/domain/repository/movie_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../state/MovieState.dart';

class MovieCubit extends Cubit<MovieState> {
  MovieCubit(this._movieRepository) : super(MovieInitial());

  final MovieRepository _movieRepository;

  static MovieCubit get(context) => BlocProvider.of(context);

  void getAllMovies() {
    emit(GetMoviesLoadingState());
    _movieRepository.getAllMovies().then((value) async {
      final movies = await _movieRepository.getAllMovies();
      emit(GetMoviesSuccessState(movies));
    }).catchError((onError) {
      emit(GetMoviesErrorState());
    });
  }
}
