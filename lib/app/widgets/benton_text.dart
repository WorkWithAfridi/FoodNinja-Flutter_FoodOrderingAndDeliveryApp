import 'package:flutter/material.dart';
import 'package:food_ninja/app/components/colors.dart';

class BontonText extends StatelessWidget {
  BontonText({
    super.key,
    required this.title,
    this.textColor = AppColors.color001B0D,
    this.fontWeight = FontWeight.normal,
    this.fontSize = 16,
    this.textAlign = TextAlign.start,
    this.maxLines = 10,
    this.textDecoration = TextDecoration.none,
  });

  TextDecoration textDecoration;
  String title;
  Color textColor;
  FontWeight fontWeight;
  double fontSize;
  TextAlign textAlign;
  int maxLines;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        decoration: textDecoration,
        fontFamily: 'BentonSansRegular',
        color: textColor,
        fontWeight: fontWeight,
        overflow: TextOverflow.ellipsis,
        fontSize: fontSize,
      ),
      maxLines: maxLines,
      textAlign: textAlign,
    );
  }
}

TextStyle interTextStyle = const TextStyle(
  fontFamily: 'Inter',
  color: Colors.black,
  fontWeight: FontWeight.w500,
  fontSize: 14,
);
