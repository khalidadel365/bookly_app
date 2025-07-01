import 'package:flutter/material.dart';

import 'best_seller_list_view_item.dart';

class BestSellerListView extends StatelessWidget {
  const BestSellerListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context ,index)=>const BestSellerListViewItem(),
        separatorBuilder: (context,index)=>const SizedBox(height: 20,),
        itemCount: 5);
  }
}


