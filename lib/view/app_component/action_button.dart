import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {

  final double btnHeight;
  final FontFamily fontFamily;
  final double fontSize;
  final String title;
  final Color textColor;
  final VoidCallback onPressed;

  const ActionButton({
    super.key,
    required this.btnHeight,
    required this.fontFamily,
    required this.fontSize,
    required this.title,
    this.textColor = AppColor.clr_FFFFFF,
    required this.onPressed
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPressed,
      child: Container(
        alignment: Alignment.center,
        height: btnHeight,
        width: double.maxFinite,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(btnHeight/2),
          color: AppColor.clr_000000
        ),
        child: LatoText(
          title: title,
          fontSize: fontSize,
          fontFamily: fontFamily,
          textAlign: TextAlign.center,
          color: textColor,
        )

      ),
    );
  }
}
