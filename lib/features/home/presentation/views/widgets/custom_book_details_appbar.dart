import 'package:flutter/material.dart';

class CustomBookDetailsAppBar extends StatelessWidget {
  const CustomBookDetailsAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Align(
      alignment: Alignment.topLeft,
      child: IconButton(
          padding: EdgeInsets.zero,
          onPressed: (){
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.close,color: Colors.white,)),
    );
  }
}