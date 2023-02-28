import 'package:bookly/data/data_source/remote_data_source.dart';

import '../../data/model/top_rated_model.dart';

abstract class TopRatedRepository {
  Future<List<TopRatedModel>> getTopRated();
}

class TopRatedRepositoryImpl implements TopRatedRepository {
  final RemoteDataSource _remoteDataSource;

  TopRatedRepositoryImpl(this._remoteDataSource);

  @override
  Future<List<TopRatedModel>> getTopRated() async {
    return await _remoteDataSource.getTopRated();
  }
}
