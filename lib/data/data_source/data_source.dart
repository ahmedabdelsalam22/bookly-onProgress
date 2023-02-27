import 'package:bookly/data/model/book_model.dart';

import '../../core/api_constance.dart';
import '../../core/services/network_services.dart';

abstract class RemoteDataSource {
  Future<List<BookModel>> getAllBooks();
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
}
