import 'package:flutter/material.dart';

import '../../../../../core/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: const Row(
        children: [
          Expanded(
              child: CustomButton(
                backgroundColor: Colors.white,
                textColor: Colors.black,
                text: '19.99 €',
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
              )
          ),
          Expanded(
              child: CustomButton(
                text: 'Free preview',
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
}