import 'package:bookly/data/model/book_model.dart';
import 'package:bookly/data/model/genre_model.dart';

import '../../core/api_constance.dart';
import '../../core/services/network_services.dart';

abstract class RemoteDataSource {
  Future<List<BookModel>> getAllBooks();
  Future<List<GenreModel>> getAllGenres();
}

class RemoteDataSourceImpl implements RemoteDataSource {
  final NetworkServices _networkServices;

  RemoteDataSourceImpl(this._networkServices);

  @override
  Future<List<BookModel>> getAllBooks() async {
    final response = await _networkServices.get(ApiEndPoints.getAllBooks);

    if (response.statusCode != 200) throw Exception();

    var result = response.data as List;

    final books = result.map((e) => BookModel.fromJson(e)).toList();
    return books;
  }

  @override
  Future<List<GenreModel>> getAllGenres() async {
    final response = await _networkServices.get(ApiEndPoints.getAllGenres);

    if (response.statusCode != 200) throw Exception();

    var result = response.data as List;

    final genres = result.map((e) => GenreModel.fromJson(e)).toList();
    return genres;
  }
}
