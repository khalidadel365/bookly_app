import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/assets.dart';

class CustomBookImage extends StatelessWidget {
   CustomBookImage({super.key, required this.book});
  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.6/4,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16  ),
            color: Colors.transparent,
            image: DecorationImage(
                fit: BoxFit.fill,
                image: NetworkImage(book.volumeInfo!.imageLinks!.thumbnail!)
            )
        ),
      ),
    );
  }
}
