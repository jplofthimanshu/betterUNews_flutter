import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ActionButtonIcon extends StatelessWidget {

  final double btnHeight;
  final FontFamily fontFamily;
  final double fontSize;
  final String title;
  final Color textColor;
  final String image;
  final Color imageColor;
  final Color backgroundColor;
  final VoidCallback onPressed;

  const ActionButtonIcon({
    super.key,
    required this.btnHeight,
    required this.fontFamily,
    required this.fontSize,
    required this.title,
    this.textColor = AppColor.clr_FFFFFF,
    this.image = '',
    this.imageColor = AppColor.clr_FFFFFF,
    this.backgroundColor = AppColor.clr_000000,
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
              color: backgroundColor
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if(image != '')
                SvgPicture.asset(
                image,
                height: 12,
                width: 12,
                color: imageColor,
                fit: BoxFit.contain,
              ),
              if(image != '')
                SizedBox(width: 5),
              LatoText(
                title: title,
                fontSize: fontSize,
                fontFamily: fontFamily,
                textAlign: TextAlign.center,
                color: textColor,
              ),
            ],
          )
      ),
    );
  }
}
