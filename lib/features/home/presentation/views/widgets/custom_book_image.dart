import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class CustomBookImage extends StatelessWidget {
  const CustomBookImage({super.key, required this.book});
  final BookModel book;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16),
      child: AspectRatio(
        aspectRatio: 2.6 / 4,
        child: (book.volumeInfo?.imageLinks?.thumbnail != null)
            ? CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: book.volumeInfo!.imageLinks!.thumbnail!,
          placeholder: (context, url) => const Center(
            child: CircularProgressIndicator(),
          ),
          errorWidget: (context, url, error) => const Icon(
            Icons.error,
            size: 40,
          ),
        )
            : Container(
          color: Colors.grey[300],
          child: const Icon(Icons.image_not_supported, size: 40),
        ),
      ),
    );
  }
}