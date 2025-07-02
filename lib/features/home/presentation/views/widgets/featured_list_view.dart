import 'package:flutter/material.dart';

import 'custom_book_item.dart';

class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.28,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemBuilder: (context,index)=> CustomBookImage(),
        itemCount: 10,
        separatorBuilder: (context,index)=>SizedBox(
            width: 12),
      ),
    );
  }
}