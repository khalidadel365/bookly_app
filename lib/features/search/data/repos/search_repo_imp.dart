import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import '../../../../core/errors/failures.dart';
import '../../../../core/utilities/api_service.dart';
import '../../../home/data/models/book_model.dart';
import 'search_repo.dart';

class SearchRepoImp implements SearchRepo {
  final ApiService apiService;

  SearchRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchBooksBySearch(
      {required String query}) async {
    try {
      var data = await apiService.get(
          endPoint:
          'volumes?Filtering=free-ebooks&q=intitle:$query&orderBy=relevance&maxResults=20');
      List<BookModel> books = [];
      for (var item in data['items']) {
        books.add(BookModel.fromMap(item));
      }

      return right(books);
    } catch (e) {
      if (e is DioException) {
        return left(
          ServerFailure.fromDioException(e),
        );
      }
      return left(
        ServerFailure(
          e.toString(),
        ),
      );
    }
  }
}
