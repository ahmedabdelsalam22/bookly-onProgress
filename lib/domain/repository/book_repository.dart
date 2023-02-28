import '../../data/data_source/remote_data_source.dart';
import '../../data/model/book_model.dart';

abstract class BookRepository {
  Future<List<BookModel>> getAllBooks();
}

class BookRepositoryImpl implements BookRepository {
  final RemoteDataSource _remoteDataSource;

  BookRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<BookModel>> getAllBooks() async {
    return await _remoteDataSource.getAllBooks();
  }
}
