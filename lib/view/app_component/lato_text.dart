import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:flutter/material.dart';
import '../../app/constants/app_colors.dart';


class LatoText extends StatelessWidget {
  final String title;
  final double fontSize;
  final Color color;
  final FontFamily fontFamily;
  final TextAlign textAlign;
  final double lineHeight;

  const LatoText({
    super.key,
    required this.title,
    this.fontSize = 16,
    this.fontFamily = FontFamily.LatoRegular,
    this.textAlign = TextAlign.start,
    this.color = AppColor.clr_000000,
    this.lineHeight = 1.2
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        height: lineHeight,
        fontSize: fontSize,
        fontFamily: fontFamily.value,
        color: color,
      ),
      textAlign: textAlign,
    );
  }
}
