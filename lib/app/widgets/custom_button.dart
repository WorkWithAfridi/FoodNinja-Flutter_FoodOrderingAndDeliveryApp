import 'package:flutter/material.dart';
import 'package:food_ninja/app/components/colors.dart';
import 'package:food_ninja/app/components/dimentions.dart';
import 'package:food_ninja/app/widgets/benton_text.dart';

class CustomButton extends StatelessWidget {
  CustomButton({
    super.key,
    required this.title,
    required this.callBackFunction,
    this.backGroundColor = AppColors.greenDark,
    this.textColor = Colors.white,
    this.showBorder = false,
  });

  String title;
  Function callBackFunction;
  Color backGroundColor;
  Color textColor;
  bool showBorder;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        callBackFunction();
      },
      child: Container(
        // width: MediaQuery.of(context).size.width,
        height: 55,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(AppDimentions().borderRadius),
          // color: showBorder ? Colors.white : backGroundColor,
          gradient: const LinearGradient(
            colors: [
              AppColors.greenLight,
              AppColors.greenDark,
              AppColors.greenDark,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          // border: Border.all(
          //   width: 2,
          //   color: backGroundColor,
          // ),
        ),

        alignment: Alignment.center,
        child: BontonText(
          title: title,
          fontSize: 17,
          fontWeight: FontWeight.w600,
          textColor: showBorder ? backGroundColor : textColor,
        ),
      ),
    );
  }
}
