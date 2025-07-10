import 'package:better_u_news/app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/app/constants/app_images.dart';
import 'package:better_u_news/view/app_component/action_button.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class BirthdateScreen extends StatefulWidget {
  const BirthdateScreen({super.key});

  @override
  State<BirthdateScreen> createState() => _BirthdateScreenState();
}

class _BirthdateScreenState extends State<BirthdateScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.clr_FEFEFE,
      appBar: AppBar(
        backgroundColor: AppColor.clr_FEFEFE,
        leadingWidth: 35,
        leading: InkWell(
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          overlayColor: WidgetStateProperty.all(Colors.transparent),
          onTap: () {
            Get.back();
          },
          child: Container(
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.only(left: 16),
            child: SvgPicture.asset(
              AppImages.backArrow_image,
              height: 14,
              width: 14,
              fit: BoxFit.contain,
            ),
          ),
        ),
        centerTitle: true,
        title: LatoText(
          title: 'Getting started',
          fontFamily: FontFamily.LatoBold,
          fontSize: 19,
        ),
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: AppColor.clr_FEFEFE,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 20),
              Container(
                alignment: Alignment.centerLeft,
                child: LatoText(
                  title: 'What is your birthday?',
                  fontFamily: FontFamily.LatoBold,
                  fontSize: 30,
                ),
              ),

              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LatoText(
                    title: 'This helps us find providers in your area.',
                    fontFamily: FontFamily.LatoMedium,
                    fontSize: 16,
                    color: AppColor.clr_A4A7AE,
                  ),
                ],
              ),

              SizedBox(height: 16),
              Container(
                height: 55,
                padding: EdgeInsets.symmetric(horizontal: 15),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(width: 1.3, color: AppColor.clr_D5D7DA),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset(
                      AppImages.calander_image,
                      height: 19,
                      width: 19,
                      fit: BoxFit.contain,
                    ),
                    SizedBox(width: 10,),
                    LatoText(
                      title: 'Date of Birth (MM-DD-YYYY)',
                      color: AppColor.clr_A4A7AE,
                      fontFamily: FontFamily.LatoRegular,
                      fontSize: 15,
                    ),
                  ],
                ),
              ),

              SizedBox(height: 25),
              ActionButton(
                btnHeight: 52,
                fontFamily: FontFamily.LatoBold,
                fontSize: 17,
                title: 'Next',
                onPressed: () {
                  Get.toNamed(RoutesName.miraOnboardingScreen);
                },
              ),

              SizedBox(height: 15),
              GestureDetector(
                onTap: () {
                  Get.toNamed(RoutesName.miraOnboardingScreen);
                },
                child: LatoText(
                  title: 'Skip',
                  color: AppColor.clr_A4A7AE,
                  fontFamily: FontFamily.LatoMedium,
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
