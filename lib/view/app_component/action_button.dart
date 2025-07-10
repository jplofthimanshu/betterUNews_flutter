import 'package:flutter/material.dart';
import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';

/// A customizable action button with consistent styling across the app.
class ActionButton extends StatelessWidget {
  final double btnHeight;
  final double fontSize;
  final String title;
  final Color textColor;
  final Color buttonColor;
  final FontFamily fontFamily;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.btnHeight,
    required this.fontSize,
    required this.title,
    required this.fontFamily,
    required this.onPressed,
    this.textColor = AppColor.clr_FFFFFF,
    this.buttonColor = AppColor.clr_000000,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent, // Ensures ripple effect is visible
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(btnHeight / 2),
        child: Container(
          height: btnHeight,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: buttonColor,
            borderRadius: BorderRadius.circular(btnHeight / 2),
          ),
          child: LatoText(
            title: title,
            fontSize: fontSize,
            fontFamily: fontFamily,
            textAlign: TextAlign.center,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
