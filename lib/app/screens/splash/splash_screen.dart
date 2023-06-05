import 'package:flutter/material.dart';
import 'package:food_ninja/app/components/dimentions.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppDimentions().getHeight(context),
        width: AppDimentions().getWidth(context),
      ),
    );
  }
}
