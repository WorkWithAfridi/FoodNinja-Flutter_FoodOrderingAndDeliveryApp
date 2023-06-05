import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/app/components/assets.dart';
import 'package:food_ninja/app/components/colors.dart';
import 'package:food_ninja/app/components/dimentions.dart';
import 'package:food_ninja/app/components/navigator.dart';
import 'package:food_ninja/app/screens/homeframe/homeframe.dart';
import 'package:food_ninja/app/widgets/benton_text.dart';
import 'package:food_ninja/app/widgets/custom_button.dart';
import 'package:food_ninja/app/widgets/custom_text_field.dart';
import 'package:food_ninja/app/widgets/decorated_background_one.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: AppDimentions().getHeight(context),
        width: AppDimentions().getWidth(context),
        child: Stack(
          children: [
            DecoratedBackgroundOne(),
            SizedBox(
              height: AppDimentions().getHeight(context),
              width: AppDimentions().getWidth(context),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: kToolbarHeight,
                      ),
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
                            fontSize: 40,
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
                  BontonText(
                    title: 'Login to your account',
                    fontSize: 20,
                    isBold: true,
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: CustomTextFormField(
                          controller: TextEditingController(),
                          hintTitle: 'Email',
                          onChanged: (value) {},
                          validator: (value) {},
                          suffixButtonAction: () {},
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 22),
                        child: CustomTextFormField(
                          controller: TextEditingController(),
                          hintTitle: 'Password',
                          onChanged: (value) {},
                          validator: (value) {},
                          suffixButtonAction: () {},
                        ),
                      ),
                    ],
                  ),
                  BontonText(
                    title: 'Or continue with',
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 22),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              // callBackFunction();
                            },
                            child: Container(
                              // width: MediaQuery.of(context).size.width,
                              height: 55,
                              padding: const EdgeInsets.symmetric(horizontal: 22),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppDimentions().borderRadius),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black.withOpacity(.1),
                                ),
                              ),

                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  SvgPicture.asset(AppAssets.facebookSvg),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  BontonText(
                                    title: 'Facebook',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    textColor: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          width: 22,
                        ),
                        Flexible(
                          child: GestureDetector(
                            onTap: () {
                              // callBackFunction();
                            },
                            child: Container(
                              // width: MediaQuery.of(context).size.width,
                              height: 55,
                              padding: const EdgeInsets.symmetric(horizontal: 22),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(AppDimentions().borderRadius),
                                color: Colors.white,
                                border: Border.all(
                                  color: Colors.black.withOpacity(.1),
                                ),
                              ),

                              alignment: Alignment.center,
                              child: Row(
                                children: [
                                  SvgPicture.asset(AppAssets.googleSvg),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  BontonText(
                                    title: 'Google',
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    textColor: Colors.black,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
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
                      'Forgot your password?',
                      style: TextStyle(
                        fontSize: 14,
                        decoration: TextDecoration.underline,
                        fontFamily: 'BentonSansRegular',
                        color: Colors.white,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: AppDimentions().getWidth(context) / 2,
                    child: CustomButton(
                      title: 'Login',
                      callBackFunction: () {
                        NavigatorServices().toReplacement(
                          context: context,
                          widget: const Homeframe(),
                        );
                      },
                    ),
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
