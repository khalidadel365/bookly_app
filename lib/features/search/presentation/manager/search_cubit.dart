import 'package:bloc/bloc.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:bookly_app/features/search/presentation/manager/search_states.dart';
class SearchCubit extends Cubit<SearchStates> {
  SearchCubit(this.searchRepo) : super(SearchBooksInitial());

  final SearchRepo searchRepo;

  Future<void> fetchBooksBySearch({required String query}) async {
    emit(SearchBooksLoading());
    var result = await searchRepo.fetchBooksBySearch(query: query);
    result.fold((failure) {
      emit(SearchBooksFailure(failure.errorMessage));
    }, (books) {
      emit(SearchBooksSuccess(books));
    });
  }
}
