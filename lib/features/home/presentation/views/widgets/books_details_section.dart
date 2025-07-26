import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utilities/styles.dart';
import 'book_rating.dart';

import 'books_action.dart';
import 'custom_book_details_appbar.dart';
import 'custom_book_item.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      children: [
        CustomBookDetailsAppBar(),
        Padding(
            padding: EdgeInsets.symmetric(
                vertical:8
                ,horizontal: width * 0.2),
            child: CustomBookImage(book: book,)
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          book.volumeInfo!.title!, style: Styles.textStyle30.copyWith(
            fontWeight: FontWeight.bold,
        ),
          textAlign: TextAlign.center,
        ),
        SizedBox(
          height: 6,
        ),
        Text(
            book.volumeInfo!.authors![0]??'', style: Styles.textStyle18.copyWith(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
            color: Colors.white.withOpacity(0.7)
        )
        ),
        const SizedBox(
          height: 15,
        ),
         BookRating(
          mainAxisAlignment: MainAxisAlignment.center,
           rating: book.volumeInfo!.averageRating??0,
           count: book.volumeInfo!.ratingsCount??0,
        ),
        const SizedBox(
          height: 30,
        ),
        BooksAction(book: book,),
      ],
    );
  }
}
