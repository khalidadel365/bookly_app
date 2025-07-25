import 'package:bookly_app/core/widgets/custom_error_widget.dart';
import 'package:bookly_app/core/widgets/custom_loading_indicator.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'best_seller_list_view_item.dart';

class NewestListView extends StatelessWidget {
  const NewestListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if(state is NewestBooksSuccess){
          return ListView.separated(
              padding: EdgeInsets.zero,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => NewestListViewItem(book: state.books[index]),
              separatorBuilder: (context, index) => const SizedBox(height: 20,),
              itemCount: state.books.length);
        }
        else if(state is NewestBooksFailure){
          return CustomErrorWidget(errorMessage: state.errorMessage);
        }
        else{
          return const CustomLoadingIndicator();
        }
      },
    );
  }
}


