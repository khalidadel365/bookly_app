import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: (){
              GoRouter.of(context).pop();
            },
            icon: const Icon(Icons.close,color: Colors.white,)),
        IconButton(
            padding: EdgeInsets.zero,
            onPressed: (){},
            icon: const Icon(Icons.shopping_cart_outlined,color: Colors.white,))
      ],
    );
  }
}