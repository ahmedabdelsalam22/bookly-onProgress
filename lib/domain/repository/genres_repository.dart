import 'package:bookly/data/data_source/remote_data_source.dart';
import 'package:bookly/data/model/genre_model.dart';

abstract class GenresRepository {
  Future<List<GenreModel>> getAllGenres();
}

class GenresRepositoryImpl implements GenresRepository {
  final RemoteDataSource remoteDataSource;

  GenresRepositoryImpl(this.remoteDataSource);

  @override
  Future<List<GenreModel>> getAllGenres() async {
    return await remoteDataSource.getAllGenres();
  }
}
