import 'package:bookly_app/features/home/presentation/views/widgets/related_books_list_view.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/styles.dart';

class SimilarBooksSection extends StatelessWidget {
  const SimilarBooksSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          'You can also like',
          style: Styles.textStyle14.copyWith(
              fontWeight: FontWeight.w600,
              fontSize: 16
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        const RelatedBooksListView(),
      ],
    );
  }
}
