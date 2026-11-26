import 'package:flutter/material.dart';
import 'package:islamy_app/core/routes/app_routes.dart';
import 'package:islamy_app/ui/home/home_screen.dart';
import 'package:islamy_app/ui/sebha/sebha_screen.dart';
import 'package:islamy_app/ui/onboarding/onboarding_screens.dart';
import 'package:islamy_app/ui/splash/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.splash: (_) => SplashScreen(),
        AppRoutes.home: (_) => HomeScreen(),
        AppRoutes.intro: (_) => OnboardingScreens(),
      },
      initialRoute: AppRoutes.splash,
    );
  }
}
