import 'package:flutter/material.dart';
import 'package:food_ninja/app/components/theme.dart';
import 'package:food_ninja/app/screens/splash/splash_screen.dart';

void main(List<String> args) {
  runApp(
    const FoodNinjaApp(),
  );
}

class FoodNinjaApp extends StatelessWidget {
  const FoodNinjaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: FoodNinjaAppTheme.lightTheme,
      home: const SplashScreen(),
    );
  }
}
