import 'package:bookly_app/core/errors/failures.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:dartz/dartz.dart';

abstract class HomeRepo
{
    Future<Either< Failure ,List<BookModel>>> fetchNewestBooks();
    Future<Either< Failure ,List<BookModel>>> fetchFeaturedBooks();
    Future<Either< Failure ,List<BookModel>>> fetchRelatedBooks({
        required String category,
});
}