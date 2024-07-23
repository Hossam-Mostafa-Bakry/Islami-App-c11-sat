import 'package:flutter/material.dart';
import 'package:islami_app_c11_sat/core/application_theme_manager.dart';
import 'package:islami_app_c11_sat/modules/hadeth/hadith_details_view.dart';
import 'package:islami_app_c11_sat/modules/quran/quran_details_view.dart';
import 'package:islami_app_c11_sat/modules/splash/splash_view.dart';

import 'layout/layout_page.dart';

// 1- Read data from assets
// 2- Dark them
// 3- Localization
// 4- State Management

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ApplicationThemeManager.lightThemeData,
      initialRoute: SplashView.routeName,
      routes: {
        SplashView.routeName: (context) => const SplashView(),
        LayOutPage.routeName: (context) => const LayOutPage(),
        QuranDetailsView.routeName: (context) => const QuranDetailsView(),
        HadithDetailsView.routeName: (context) => const HadithDetailsView(),
      },
    );
  }
}
