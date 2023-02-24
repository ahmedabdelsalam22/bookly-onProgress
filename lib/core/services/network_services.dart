import 'package:dio/dio.dart';

abstract class NetworkServices {
  Future<Response> get(String url);
}

class NetworkServicesImpl implements NetworkServices {
  final dio = Dio();

  @override
  Future<Response> get(String url) async {
    var response = dio.get(url);
    return response;
  }
}
