import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/styles.dart';
import 'best_seller_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const SizedBox(height: 10),
          const FeaturedBooksListView(),
          const SizedBox(height: 50),
          Text('Best Seller', style: Styles.textStyle18.copyWith()),
          const SizedBox(height: 20),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}

