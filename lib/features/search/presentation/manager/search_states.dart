import '../../../home/data/models/book_model.dart';

abstract class SearchStates {
  const SearchStates();

}

class SearchBooksInitial extends SearchStates {}

class SearchBooksFailure extends SearchStates {
  final String errorMessage;

  const SearchBooksFailure(this.errorMessage);
}

class SearchBooksSuccess extends SearchStates {
  final List<BookModel> books;

  const SearchBooksSuccess(this.books);
}

class SearchBooksLoading extends SearchStates {}
