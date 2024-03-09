import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ktaby_app/Features/Splash/presentation/views/splash_view.dart';
import 'package:ktaby_app/constants.dart';

void main() {
  runApp(const KtabyApp());
}

class KtabyApp extends StatelessWidget {
  const KtabyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      theme: ThemeData.dark().copyWith(scaffoldBackgroundColor: defoultScafColor),
      home: const SplashView(),
    );
  }
}
