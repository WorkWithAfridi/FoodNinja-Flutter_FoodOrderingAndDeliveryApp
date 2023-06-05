import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/app/components/assets.dart';
import 'package:food_ninja/app/components/dimentions.dart';

class DecoratedBackgroundOne extends StatelessWidget {
  DecoratedBackgroundOne({
    super.key,
    this.onlyAppbar = false,
  });
  bool onlyAppbar;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: AppDimentions().getHeight(context),
      width: AppDimentions().getWidth(context),
      color: Colors.white,
      child: Stack(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: SvgPicture.asset(
              AppAssets.lightBackgroundPatternSvg,
              fit: BoxFit.cover,
            ),
          ),
          Container(
            height: AppDimentions().getHeight(context),
            width: AppDimentions().getWidth(context),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
                colors: onlyAppbar
                    ? [
                        Colors.white.withOpacity(.1),
                        Colors.white.withOpacity(.8),
                        Colors.white,
                        Colors.white,
                        Colors.white,
                        const Color(0xffF4F4F4),
                      ]
                    : [
                        Colors.white.withOpacity(.01),
                        Colors.white.withOpacity(.6),
                        const Color(0xffF4F4F4),
                      ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
