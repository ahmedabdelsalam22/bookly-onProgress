import 'package:bookly/data/model/movie_model.dart';

import '../../core/api_constance.dart';
import '../../core/services/network_services.dart';

abstract class RemoteDataSource {
  Future<List<Movie>> getAllMovies();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final NetworkServices _networkServices;

  RemoteDataSourceImpl(this._networkServices);

  @override
  Future<List<Movie>> getAllMovies() async {
    final response = await _networkServices.get(ApiEndPoints.getAllMovies);

    if (response.statusCode != 200) throw Exception();

    var result = response.data as List;

    final movie = result.map((e) => Movie.fromJson(e)).toList();
    return movie;
  }
}
