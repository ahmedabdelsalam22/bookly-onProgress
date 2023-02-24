import '../../data/data_source/data_source.dart';
import '../../data/model/movie_model.dart';

abstract class MovieRepository {
  Future<List<Movie>> getAllMovies();
}

class MovieRepositoryImpl implements MovieRepository {
  final RemoteDataSourceImpl _remoteDataSourceImpl;

  MovieRepositoryImpl(this._remoteDataSourceImpl);

  @override
  Future<List<Movie>> getAllMovies() async {
    return await _remoteDataSourceImpl.getAllMovies();
  }
}
