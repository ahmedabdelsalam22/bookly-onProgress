import 'package:dio/dio.dart';

import '../core/api_constance.dart';
import '../core/services/network_services.dart';

abstract class RemoteDataSource {
  Future<Response<dynamic>> getAllMovies();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final NetworkServices _networkServices;

  RemoteDataSourceImpl(this._networkServices);

  @override
  Future<Response> getAllMovies() async {
    final response = await _networkServices.get(ApiConstance.getAllMovies);

    if (response.statusCode != 200) throw Exception();

    var movies = response.data as List;
  }
}
