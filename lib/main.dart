import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
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
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: defoultScafColor,
      ),
      routerConfig: AppRouter.router,
    );
  }
}
