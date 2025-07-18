import 'package:bookly_app/constants.dart';
import 'package:bookly_app/core/utilities/app_router.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  runApp(const BooklyApp());
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent, // Change this to your desired color
    ),
  );
}

class BooklyApp extends StatelessWidget {
  const  BooklyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: kPrimaryColor,
        textTheme: GoogleFonts.montserratTextTheme(
          ThemeData.dark().textTheme.apply(bodyColor: Colors.white)
        )
      ),
    );
  }

}

