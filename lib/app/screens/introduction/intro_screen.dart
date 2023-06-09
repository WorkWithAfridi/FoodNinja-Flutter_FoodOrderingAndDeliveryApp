import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/app/components/assets.dart';
import 'package:food_ninja/app/components/dimentions.dart';
import 'package:food_ninja/app/components/navigator.dart';
import 'package:food_ninja/app/screens/login/login_screen.dart';
import 'package:food_ninja/app/widgets/benton_text.dart';
import 'package:food_ninja/app/widgets/custom_button.dart';

class IntroScreen extends StatelessWidget {
  IntroScreen({super.key});
  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    final pages = <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: AppDimentions().getHeight(context) / 2.5,
              child: SvgPicture.asset(
                AppAssets.introOneSvg,
              ),
            ),
            Column(
              children: [
                Column(
                  children: [
                    BontonText(
                      title: 'Find your Comfort',
                      fontSize: 25,
                      isBold: true,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    BontonText(
                      title: 'Food here.',
                      fontSize: 25,
                      isBold: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    BontonText(
                      title: 'Here you can find a chef or dish for every',
                      textAlign: TextAlign.center,
                      fontSize: 13,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    BontonText(
                      title: ' taste and color. Enjoy!',
                      textAlign: TextAlign.center,
                      fontSize: 13,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 40,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: AppDimentions().getHeight(context) / 2.5,
              child: SvgPicture.asset(
                AppAssets.introTwoSvg,
              ),
            ),
            Column(
              children: [
                Column(
                  children: [
                    BontonText(
                      title: 'FoodNinja is where your',
                      fontSize: 25,
                      isBold: true,
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    BontonText(
                      title: 'Comfort food lives.',
                      fontSize: 25,
                      isBold: true,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  children: [
                    BontonText(
                      title: 'Enjoy a fast and smooth food delivery at',
                      textAlign: TextAlign.center,
                      fontSize: 13,
                    ),
                    const SizedBox(
                      height: 3,
                    ),
                    BontonText(
                      title: ' your doorstep.',
                      textAlign: TextAlign.center,
                      fontSize: 13,
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      )
    ];
    return Scaffold(
      body: SizedBox(
        height: AppDimentions().getHeight(context),
        width: AppDimentions().getWidth(context),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const SizedBox(
              height: kToolbarHeight,
            ),
            Expanded(
              child: PageView.builder(
                itemCount: 2,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return pages[index];
                },
                controller: pageController,
              ),
            ),
            SizedBox(
              width: AppDimentions().getWidth(context) / 2,
              child: CustomButton(
                title: 'Next',
                callBackFunction: () {
                  if (pageController.page == 0) {
                    pageController.animateToPage(
                      1,
                      duration: const Duration(
                        milliseconds: 500,
                      ),
                      curve: Curves.fastOutSlowIn,
                    );
                  } else if (pageController.page == 1) {
                    NavigatorServices().toReplacement(
                      context: context,
                      widget: const LoginScreen(),
                    );
                  }
                },
              ),
            ),
            const SizedBox(
              height: kToolbarHeight,
            ),
          ],
        ),
      ),
    );
  }
}
