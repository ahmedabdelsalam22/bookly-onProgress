import '../../data/data_source/data_source.dart';
import '../../data/model/movie_model.dart';

abstract class BookRepository {
  Future<List<Movie>> getAllBooks();
}

class BookRepositoryImpl implements BookRepository {
  final RemoteDataSourceImpl _remoteDataSourceImpl;

  BookRepositoryImpl(this._remoteDataSourceImpl);

  @override
  Future<List<Movie>> getAllBooks() async {
    return await _remoteDataSourceImpl.getAllBooks();
  }
}
