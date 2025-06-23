import 'package:bookly_app/core/utilities/assets.dart';
import 'package:bookly_app/features/home/presentation/views/widgets/custom_list_view_item.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: const [
        CustomAppBar(),
        SizedBox(height: 10),
        FeaturedBooksListView(),
      ],
    );
  }
}
class FeaturedBooksListView extends StatelessWidget {
  const FeaturedBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height*.28,
      child: Padding(
        padding: const EdgeInsets.only(left: 30),
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: BouncingScrollPhysics(),
            itemBuilder: (context,index)=> FeaturedListViewItem(),
            itemCount: 10,
            separatorBuilder: (context,index)=>SizedBox(
              width: 12),
        ),
      ),
    );
  }
}

