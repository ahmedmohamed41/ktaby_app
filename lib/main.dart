import 'package:flutter/material.dart';
import 'package:ktaby_app/core/app_router.dart';
import 'package:ktaby_app/core/constants.dart';

void main() {
  runApp(const KtabyApp());
}

class KtabyApp extends StatelessWidget {
  const KtabyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme:
          ThemeData.dark().copyWith(scaffoldBackgroundColor: defoultScafColor),
      routerConfig: AppRouter.router,
    );
  }
}
