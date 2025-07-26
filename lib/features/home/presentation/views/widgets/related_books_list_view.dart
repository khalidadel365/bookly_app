import 'package:bookly_app/features/home/presentation/manager/related_books_cubit/related_books_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'custom_book_item.dart';

class RelatedBooksListView extends StatelessWidget {
  const RelatedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<RelatedBooksCubit, RelatedBooksState>(
  builder: (context, state) {
    if(state is RelatedBooksSuccess){
      return SizedBox(
        height: MediaQuery.of(context).size.height*.16,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          physics: BouncingScrollPhysics(),
          itemBuilder: (context,index)=> CustomBookImage(
            book: state.books[index],
          ),

          itemCount: state.books.length,
          separatorBuilder: (context,index)=>SizedBox(
              width: 10),
        ),
      );
    }
    else if(state is RelatedBooksFailure){
      return Center(child: Text(state.errorMessage));
    }
    else{
      return Center(child: CircularProgressIndicator());
    }
  },
);
  }
}