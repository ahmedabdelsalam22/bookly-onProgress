import 'package:bookly/data/data_source/remote_data_source.dart';

import '../../data/model/searchModel.dart';

abstract class SearchRepository {
  Future<List<SearchModel>> searchInBooks(String text);
}

class SearchRepositoryImpl implements SearchRepository {
  final RemoteDataSource _remoteDataSource;

  SearchRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<SearchModel>> searchInBooks(String text) async {
    return await _remoteDataSource.searchInBooks(text);
  }
}
