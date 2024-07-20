import 'dart:async';

import 'package:flutter/material.dart';

import '../../layout/layout_page.dart';

class SplashView extends StatefulWidget {
  static const String routeName = "/";

  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    Timer(
      const Duration(seconds: 2),
      () {
        Navigator.pushNamedAndRemoveUntil(
          context,
          LayOutPage.routeName,
          (route) => false,
        );
      },
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      "assets/images/splash_background.png",
      fit: BoxFit.cover,
    );
  }
}
