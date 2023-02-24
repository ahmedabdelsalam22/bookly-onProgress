import 'package:dio/dio.dart';

abstract class RemoteDataSource {
  Future<Response<dynamic>> getPosts();
}
