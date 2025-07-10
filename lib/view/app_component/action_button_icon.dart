import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';

/// A reusable action button with an optional icon (SVG).
class ActionButtonIcon extends StatelessWidget {
  final double btnHeight;
  final double fontSize;
  final String title;
  final FontFamily fontFamily;
  final Color textColor;
  final Color imageColor;
  final Color backgroundColor;
  final VoidCallback onPressed;
  final String? image; // Optional icon path (SVG)

  const ActionButtonIcon({
    super.key,
    required this.btnHeight,
    required this.fontSize,
    required this.title,
    required this.fontFamily,
    required this.onPressed,
    this.image,
    this.textColor = AppColor.clr_FFFFFF,
    this.imageColor = AppColor.clr_FFFFFF,
    this.backgroundColor = AppColor.clr_000000,
  });

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(btnHeight / 2),
        child: Container(
          height: btnHeight,
          width: double.infinity,
          alignment: Alignment.center,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(btnHeight / 2),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (image != null && image!.isNotEmpty) ...[
                SvgPicture.asset(
                  image!,
                  height: 16,
                  width: 16,
                  color: imageColor,
                ),
                const SizedBox(width: 8),
              ],
              Flexible(
                child: LatoText(
                  title: title,
                  fontSize: fontSize,
                  fontFamily: fontFamily,
                  textAlign: TextAlign.center,
                  color: textColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
