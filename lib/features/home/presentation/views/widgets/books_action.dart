import 'package:bookly_app/core/utilities/function/launch_url.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key, required this.book});

  final BookModel book;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Expanded(
              child: CustomButton(
                backgroundColor: Colors.white,
                textColor: Colors.black,
                text: 'Free',
                borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
              )
          ),
           Expanded(
              child: CustomButton(
                onPressed: ()async{
                  launchCustomUrl(context, book.volumeInfo!.previewLink!);
                },
                text: getText(book),
                fontSize: 17,
                backgroundColor: Color(0xffEF8262),
                textColor: Colors.white,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(16),
                    bottomRight: Radius.circular(16)),
              )
          ),
        ],
      ),
    );
  }

  String getText(BookModel book) {
    if(book.volumeInfo!.previewLink==null){
      return 'Not Available';
    }
    else{
      return 'Preview';
    }
  }
}