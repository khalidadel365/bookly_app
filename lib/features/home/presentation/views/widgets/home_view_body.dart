import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/assets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilities/styles.dart';
import 'newest_list_view.dart';
import 'newest_list_view_item.dart';
import 'custom_app_bar.dart';
import 'featured_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      physics: const BouncingScrollPhysics(),
      slivers: [
        const SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: const CustomAppBar(),
              ),
              const SizedBox(height: 10),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: const FeaturedBooksListView(),
              ),
              const SizedBox(height: 50),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.0),
                child: Text('Newest Books', style: Styles.textStyle18),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
        SliverToBoxAdapter(child: SizedBox(height: 10,)),
        SliverPadding(
          padding: const EdgeInsets.symmetric(horizontal: 30.0),
          sliver: NewestListView(),
        )
      ],
    );
  }
}
