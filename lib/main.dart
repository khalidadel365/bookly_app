import 'package:bookly_app/constants.dart';
 import 'package:bookly_app/core/utilities/app_router.dart';
import 'package:bookly_app/core/utilities/sevice_locator.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home/presentation/manager/featured_books_cubit/featured_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/manager/newest_books_cubit/newest_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

import 'features/splash/presentation/views/splash_view.dart';

void main() {
  setupServiceLocator();
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
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context)=>FeaturedBooksCubit(
            getIt.get<HomeRepoImp>())..fetchFeaturedBooks()),
        BlocProvider(create: (context)=>NewestBooksCubit(
            getIt.get<HomeRepoImp>()),),
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.montserratTextTheme(
            ThemeData.dark().textTheme.apply(bodyColor: Colors.white)
          )
        ),
      ),
    );
  }

}

