import 'package:flutter/material.dart';
import 'package:food_ninja/app/components/assets.dart';
import 'package:food_ninja/app/components/colors.dart';
import 'package:food_ninja/app/components/dimentions.dart';
import 'package:food_ninja/app/components/navigator.dart';
import 'package:food_ninja/app/screens/introduction/intro_screen.dart';
import 'package:food_ninja/app/widgets/benton_text.dart';
import 'package:food_ninja/app/widgets/decorated_background_one.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          NavigatorServices().toReplacement(
            context: context,
            widget: IntroScreen(),
          );
        },
        child: SizedBox(
          height: AppDimentions().getHeight(context),
          width: AppDimentions().getWidth(context),
          child: Stack(
            children: [
              DecoratedBackgroundOne(),
              SizedBox(
                height: AppDimentions().getHeight(context),
                width: AppDimentions().getWidth(context),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // SvgPicture.asset(
                    //   AppAssets.appLogoSvg,
                    //   fit: BoxFit.cover,
                    // ),
                    SizedBox(
                      width: AppDimentions().getWidth(context) / 2,
                      child: Image.asset(
                        AppAssets.appLogoPng,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return const LinearGradient(
                          colors: [
                            AppColors.greenLight,
                            AppColors.greenDark,
                            AppColors.greenDark,
                          ],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ).createShader(bounds);
                      },
                      child: const Text(
                        'FoodNinja',
                        style: TextStyle(
                          fontSize: 36,
                          fontFamily: 'BentonSansBold',
                          color: Colors.white,
                        ),
                      ),
                    ),

                    const SizedBox(
                      height: 2,
                    ),
                    BontonText(
                      title: 'Deliever Favorite Food',
                      fontSize: 13,
                      fontWeight: FontWeight.bold,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
