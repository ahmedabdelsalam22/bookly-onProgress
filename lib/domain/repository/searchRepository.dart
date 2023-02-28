import 'package:bookly/data/data_source/data_source.dart';

import '../../data/model/book_model.dart';

abstract class SearchRepository {
  Future<List<BookModel>> searchInBooks(String text);
}

class SearchRepositoryImpl implements SearchRepository {
  final RemoteDataSource _remoteDataSource;

  SearchRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<BookModel>> searchInBooks(String text) async {
    return await _remoteDataSource.searchInBooks(text);
  }
}
