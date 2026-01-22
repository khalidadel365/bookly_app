import 'package:bookly_app/features/search/presentation/manager/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/manager/search_states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../../../core/utilities/styles.dart';
import '../../../../home/presentation/views/widgets/best_seller_list_view_item.dart';
import 'custom_search_text_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomSearchTextField(),
          SizedBox(
            height: 25
            ,),
          Text('Search Results', style: Styles.textStyle18),
          SizedBox(
            height: 25
            ,),
          Expanded(child: SearchResultListView()),
        ],
      ),
    );
  }
}

class SearchResultListView extends StatelessWidget {
  const SearchResultListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchCubit, SearchStates>(
      builder: (context, state) {
        if (state is SearchBooksSuccess) {
          return ListView.separated(
            padding: EdgeInsets.zero,
            itemCount: state.books.length,
            separatorBuilder: (context, index) => const SizedBox(height: 20),
            itemBuilder: (context, index) {
              return NewestListViewItem(book: state.books[index]);
            },
          );
        } else if (state is SearchBooksFailure) {
          return Center(child: Text(state.errorMessage));
        } else if (state is SearchBooksLoading) {
          return const Center(child: CircularProgressIndicator());
        } else {
          return const Center(child: Text('Start searching for books...'));
        }
      },
    );
  }
}
