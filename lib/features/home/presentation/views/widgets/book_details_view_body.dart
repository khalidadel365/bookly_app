import 'package:bookly_app/core/widgets/custom_button.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/book_rating.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utilities/styles.dart';
import 'books_action.dart';
import 'custom_book_details_appbar.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
          children: [
            const CustomBookDetailsAppBar(),
            Padding(
              padding: EdgeInsets.symmetric(
                  vertical:8
                  ,horizontal: width * 0.2),
              child: CustomBookImage()
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              'The Jungle Book', style: Styles.textStyle30.copyWith(
                fontWeight: FontWeight.bold
            ),
            ),
            SizedBox(
              height: 6,
            ),
            Text(
              'Rudyard Kipling', style: Styles.textStyle18.copyWith(
                fontStyle: FontStyle.italic,
                fontWeight: FontWeight.w500,
                color: Colors.white.withOpacity(0.7)
                )
            ),
            const SizedBox(
              height: 15,
            ),
            const BookRating(
              mainAxisAlignment: MainAxisAlignment.center,
            ),
            const SizedBox(
              height: 30,
            ),
            const BooksAction(),
            const SizedBox(
              height: 50,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'You can also like',
                style: Styles.textStyle14.copyWith(
                  fontWeight: FontWeight.w600,
                  fontSize: 15
                ),
              ),
            ),
            const SizedBox(
              height: 16,
            ),
            const SimilarBookListView(),
            const SizedBox(
              height: 40,
            ),
      ],
    ),);
  }
}






