import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/core/utilities/api_service.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class HomeRepoImp implements HomeRepo{
  final ApiService apiService;
  HomeRepoImp(this.apiService);
  @override
  Future<Either<Failure, List<BookModel>>> fetchNewestBooks() async{
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=newest &q=football'
      );
      List<BookModel> books = [];
      for(var item in data['items']){
        try {
          books.add(BookModel.fromMap(item));
        } on Exception catch (e) {
          books.add(BookModel.fromMap(item));
        }
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchFeaturedBooks() async{
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&q=subject:programming'
      );
      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromMap(item));
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }  }

  @override
  Future<Either<Failure, List<BookModel>>> fetchRelatedBooks(
      {required String category}) async{
    try {
      var data = await apiService.get(
          endPoint: 'volumes?Filtering=free-ebooks&Sorting=relevance &q=subject:programming'
      );
      List<BookModel> books = [];
      for(var item in data['items']){
        books.add(BookModel.fromMap(item));
      }
      return right(books);
    } on Exception catch (e) {
      if(e is DioException){
        return left(ServerFailure.fromDioException(e));
      }
      return left(ServerFailure(e.toString()));
    }  }

}