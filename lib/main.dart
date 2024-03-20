import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ktaby_app/Features/home/data/repos/home_repo_impl.dart';
import 'package:ktaby_app/Features/home/presentation/manger/best_books_cubit/best_books_cubit.dart';
import 'package:ktaby_app/Features/home/presentation/manger/featured_newset_cubit/featured_newset_cubit.dart';
import 'package:ktaby_app/core/utils/app_router.dart';
import 'package:ktaby_app/core/utils/bloc_observer.dart';
import 'package:ktaby_app/core/utils/constants.dart';

void main() {
  Bloc.observer = MyBlocObserver();

  runApp(const KtabyApp());
}

class KtabyApp extends StatelessWidget {
  const KtabyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => FeaturedNewsetCubit(
            HomeRepoImpl(),
          )..fetchFeaturedNewset(),
        ),
        BlocProvider(
          create: (context) => BestBooksCubit(
            HomeRepoImpl(),
          )..fetchBestBooks(),
        ),
         
      ],
      child: MaterialApp.router(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark().copyWith(
          scaffoldBackgroundColor: defoultScafColor,
        ),
        routerConfig: AppRouter.router,
      ),
    );
  }
}
