import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/assets.dart';
import 'package:flutter/material.dart';

import '../../../../../core/utilities/styles.dart';
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
          Text(
              'Best Seller', style: Styles.textStyle18.copyWith(

          ),
          ),
          const SizedBox(height: 20),
          const BestSellerListViewItem(),
        ],
      ),
    );
  }
}

class BestSellerListViewItem extends StatelessWidget {
  const BestSellerListViewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 125,
      child: Row(
        children: <Widget>[
          AspectRatio(
            aspectRatio: 2.60 / 4,
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                color: Colors.blue,
                image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(AssetsData.testImage),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          Column(
            children:  [
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.5,
                child: Text(
                  'Harry Potter and the Goblet of Fire klsa;kd;skadl;sakl;dkasl;',
                  style: Styles.textStyle20,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                ),
            ],
          )
        ],
      ),
    );
  }
}
