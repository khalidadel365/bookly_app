import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'newest_list_view_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess){
          return SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                final book = state.books[index];
                return Padding(
                  padding: const EdgeInsets.only(bottom: 20),
                  child: NewestListViewItem(book: book),
                );
              },
              childCount: state.books.length,
            ),
          );
        }
        else if(state is NewestBooksFailure){
          return SliverToBoxAdapter(child: CustomErrorWidget(errorMessage: state.errorMessage));
        }
        else{
          return SliverToBoxAdapter(child: Center(child: const CustomLoadingIndicator()));
        }
      },
    );
  }
}


