import 'package:bookly_app/features/home/presentation/views/widgets/custom_book_item.dart';
import 'package:flutter/material.dart';
import '../../../../../core/utilities/styles.dart';
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
              padding: EdgeInsets.symmetric(vertical:36 ,horizontal: width * 0.2),
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
      ],
    ),);
  }
}


