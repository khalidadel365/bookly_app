import 'package:dio/dio.dart';

class ApiService{

  final baseUrl = 'https://www.googleapis.com/books/v1/';
  final Dio dio = Dio();


  Future<Map<String,dynamic>> get ({
    required String endPoint,
})async{
    var response = await dio.get('$baseUrl$endPoint');
    print(response.data);
    return response.data;
  }
}