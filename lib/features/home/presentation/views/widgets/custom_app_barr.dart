import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import '../../../../../core/utilities/assets.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24.0,vertical: 40),
      child: Row(
        children: [
          Image.asset(
              AssetsData.logo,
              height: 20),
          const Spacer(),
          IconButton(
            onPressed: (){},
            icon: Icon(
              FontAwesomeIcons.magnifyingGlass,
              size: 23,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}