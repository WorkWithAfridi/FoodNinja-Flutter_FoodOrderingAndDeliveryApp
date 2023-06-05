import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/app/components/assets.dart';
import 'package:food_ninja/app/components/dimentions.dart';

class DecoratedBackgroundOne extends StatelessWidget {
  const DecoratedBackgroundOne({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppDimentions().getHeight(context),
      width: AppDimentions().getWidth(context),
      child: Stack(
        children: [
          SvgPicture.asset(
            AppAssets.lightBackgroundPatternSvg,
          ),
          Container(
            height: AppDimentions().getHeight(context),
            width: AppDimentions().getWidth(context),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: [
                  Colors.white.withOpacity(.01),
                  Colors.white.withOpacity(.8),
                  Colors.white,
                  Colors.white,
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
