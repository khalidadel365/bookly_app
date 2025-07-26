import 'package:bookly_app/core/utilities/sevice_locator.dart';
import 'package:bookly_app/features/home/data/models/book_model.dart';
import 'package:bookly_app/features/home/data/repos/home_repo_imp.dart';
import 'package:bookly_app/features/home/presentation/manager/related_books_cubit/related_books_cubit.dart';
import 'package:bookly_app/features/home/presentation/views/book_details_view.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/search/presentation/views/search_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';

import '../../features/splash/presentation/views/splash_view.dart';

abstract class AppRouter {
  static const kHomeView = '/homeView';
  static const kBookDetailsView = '/bookDetailsView';
  static const kSearchView = '/searchView';
  static final router = GoRouter(
      routes: [
        GoRoute(
            path: '/',
            builder: (context, state) => SplashView()
        ),
        GoRoute(
            path: kHomeView,
            builder: (context, state) => HomeView()
        ),
        GoRoute(
            path: kBookDetailsView,
            builder: (context, state) =>
                BlocProvider(
                  create: (context) => RelatedBooksCubit(getIt.get<HomeRepoImp>()),
                  child: BookDetailsView(
                    book: state.extra as BookModel,
                  ),
                )
        ),
        GoRoute(
            path: kSearchView,
            builder: (context, state) => SearchView()
        )
      ]
  );
}