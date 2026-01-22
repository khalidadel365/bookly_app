import 'package:bookly_app/core/utilities/sevice_locator.dart';
import 'package:bookly_app/features/search/data/repos/search_repo.dart';
import 'package:bookly_app/features/search/presentation/manager/search_cubit.dart';
import 'package:bookly_app/features/search/presentation/views/widgets/search_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../core/utilities/api_service.dart';
import '../../data/repos/search_repo_imp.dart';

class SearchView extends StatelessWidget {
  const SearchView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SearchRepo searchRepo = SearchRepoImp(getIt.get<ApiService>( ));
    return Scaffold(
      body: SafeArea(
          child: BlocProvider(
            create: (context) => SearchCubit(searchRepo),
            child: SearchViewBody(),
          )
      ),
    );
  }
}
