import 'package:bookly/data/data_source/remote_data_source.dart';

import '../../data/model/books_by_genres_model.dart';

abstract class BooksByGenreRepository {
  Future<List<BooksByGenresModel>> getBooksByGenre(String genreName);
}

class BooksByGenreRepositoryImpl implements BooksByGenreRepository {
  final RemoteDataSource _remoteDataSource;

  BooksByGenreRepositoryImpl(this._remoteDataSource);
  @override
  Future<List<BooksByGenresModel>> getBooksByGenre(String genreName) async {
    return await _remoteDataSource.getBooksByGenre(genreName);
  }
}
