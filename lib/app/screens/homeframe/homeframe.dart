import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_ninja/app/blocs/cubit/homepage_cubit.dart';
import 'package:food_ninja/app/components/assets.dart';
import 'package:food_ninja/app/components/colors.dart';
import 'package:food_ninja/app/components/dimentions.dart';
import 'package:food_ninja/app/widgets/benton_text.dart';
import 'package:food_ninja/app/widgets/decorated_background_one.dart';

class Homeframe extends StatelessWidget {
  const Homeframe({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          DecoratedBackgroundOne(
            onlyAppbar: true,
          ),
          Container(
            height: double.maxFinite,
            width: double.maxFinite,
            padding: const EdgeInsets.symmetric(horizontal: 22),
            child: Column(
              children: [
                const SizedBox(
                  height: kToolbarHeight * 1.5,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        BontonText(
                          title: 'Find your',
                          fontSize: 30,
                          isBold: true,
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        BontonText(
                          title: 'Favorite Food',
                          fontSize: 30,
                          isBold: true,
                        ),
                      ],
                    ),
                    Material(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                          AppDimentions().borderRadius,
                        ),
                      ),
                      elevation: 10,
                      shadowColor: Colors.black.withOpacity(.3),
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(
                            AppDimentions().borderRadius,
                          ),
                        ),
                        child: const Icon(
                          Icons.notifications,
                          color: AppColors.greenLight,
                        ),
                      ),
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        width: double.maxFinite,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xffF9A84D).withOpacity(.1),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SvgPicture.asset(
                              AppAssets.searchSvg,
                            ),
                            const SizedBox(
                              width: 6,
                            ),
                            BontonText(
                              title: 'What do you want to order?',
                              fontSize: 14,
                              textColor: const Color(0xffF9A84D).withOpacity(.8),
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: const Color(0xffF9A84D).withOpacity(.1),
                        borderRadius: BorderRadius.circular(
                          AppDimentions().borderRadius,
                        ),
                      ),
                      padding: const EdgeInsets.all(12),
                      child: SvgPicture.asset(
                        AppAssets.filterSvg,
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                Container(
                  height: 180,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        AppColors.greenLight,
                        AppColors.greenDark,
                      ],
                    ),
                    borderRadius: BorderRadius.circular(
                      AppDimentions().borderRadius,
                    ),
                  ),
                  child: Stack(
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        height: double.maxFinite,
                        child: SvgPicture.asset(
                          AppAssets.bgTwoSvg,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            Flexible(
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BontonText(
                                      title: 'Special Deal For',
                                      fontSize: 22,
                                      isBold: true,
                                      textColor: Colors.white,
                                    ),
                                    BontonText(
                                      title: 'October',
                                      fontSize: 22,
                                      isBold: true,
                                      textColor: Colors.white,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Flexible(
                              child: SizedBox(
                                width: double.infinity,
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    BontonText(
                                      title: 'Special Deal For October.',
                                      fontSize: 22,
                                      isBold: true,
                                      textColor: Colors.white,
                                    ),
                                    const SizedBox(
                                      height: 12,
                                    ),
                                    GestureDetector(
                                      onTap: () {
                                        // callBackFunction();
                                      },
                                      child: Container(
                                        // width: MediaQuery.of(context).size.width,
                                        height: 40,
                                        width: AppDimentions().getWidth(context) / 4,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.circular(6),
                                          color: Colors.white,
                                        ),

                                        alignment: Alignment.center,
                                        child: BontonText(
                                          title: 'Buy Now',
                                          fontSize: 12,
                                          fontWeight: FontWeight.w600,
                                          textColor: AppColors.greenLight,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            child: SizedBox(
              width: AppDimentions().getWidth(context),
              child: Padding(
                padding: const EdgeInsets.all(12),
                child: Container(
                  padding: const EdgeInsets.all(16),
                  height: 75,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      22,
                    ),
                  ),
                  alignment: Alignment.center,
                  child: Row(
                    children: [
                      BottomNavIcon(
                        icon: AppAssets.homeSvg,
                        title: 'Home',
                        index: 0,
                      ),
                      BottomNavIcon(
                        icon: AppAssets.profileSvg,
                        title: 'Profile',
                        index: 1,
                      ),
                      BottomNavIcon(
                        icon: AppAssets.cartSvg,
                        title: 'Cart',
                        index: 2,
                      ),
                      BottomNavIcon(
                        icon: AppAssets.messageSvg,
                        title: 'Message',
                        index: 3,
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomNavIcon extends StatelessWidget {
  BottomNavIcon({
    super.key,
    required this.title,
    required this.icon,
    required this.index,
  });

  String icon;
  String title;
  int index;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomepageCubit, HomepageState>(
      builder: (context, state) {
        return Flexible(
          flex: state.selectedPage == index ? 5 : 3,
          child: GestureDetector(
            onTap: () {
              context.read<HomepageCubit>().changeHomepage(index);
            },
            child: state.selectedPage != index
                ? Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    color: Colors.transparent,
                    child: Align(
                      child: SizedBox(
                        height: 20,
                        width: 20,
                        child: SvgPicture.asset(
                          icon,
                        ),
                      ),
                    ),
                  )
                : Container(
                    height: double.maxFinite,
                    width: double.maxFinite,
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: AppColors.greenLight.withOpacity(.1),
                      borderRadius: BorderRadius.circular(
                        6,
                      ),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          height: 20,
                          width: 20,
                          child: SvgPicture.asset(
                            icon,
                          ),
                        ),
                        const SizedBox(
                          width: 6,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const SizedBox(
                              height: 3,
                            ),
                            BontonText(
                              title: title,
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
          ),
        );
      },
    );
  }
}
