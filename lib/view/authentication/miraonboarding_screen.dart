import 'package:better_u_news/app/routes/route_names.dart';
import 'package:flutter/material.dart';
import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/app/constants/app_images.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class MiraonboardingScreen extends StatefulWidget {
  const MiraonboardingScreen({super.key});

  @override
  State<MiraonboardingScreen> createState() => _MiraonboardingScreenState();
}

class _MiraonboardingScreenState extends State<MiraonboardingScreen> {

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
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
          title: 'Mira',
          fontFamily: FontFamily.LatoBold,
          fontSize: 19,
        ),
        actions: [
          InkWell(
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
            hoverColor: Colors.transparent,
            overlayColor: WidgetStateProperty.all(Colors.transparent),
            onTap: () {
              Get.toNamed(RoutesName.chatHistoryOverlayScreen);
            },
            child: Container(
              alignment: Alignment.centerLeft,
              padding: const EdgeInsets.only(right: 16),
              child: SvgPicture.asset(
                AppImages.menu_image,
                height: 26,
                width: 26,
                fit: BoxFit.contain,
              ),
            ),
          ),
        ],
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: AppColor.clr_FEFEFE,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  color: AppColor.clr_FFFFFF,
                ),
              ),
              SizedBox(
                height: 75,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 10,
                  itemBuilder: (context, index) => Container(
                    height: 62,
                    width: screenWidth*0.7,
                    margin: EdgeInsets.only(right: 8),
                    padding: EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: AppColor.clr_E9E9E9
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        LatoText(
                          title: 'AI Suggestion Headline',
                          fontSize: 14,
                          color: AppColor.clr_000000,
                          fontFamily: FontFamily.LatoBlack,),
                        SizedBox(height: 10),
                        LatoText(
                          title: 'AI Suggestion Subtext',
                          fontSize: 14,
                          color: AppColor.clr_717680,
                          fontFamily: FontFamily.LatoSemibold,)
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(height: 15),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 135,
        color: AppColor.clr_AEAEAE.withValues(alpha:0.05),
        child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 20,right: 20,top: 15,bottom: 15),
              child: Column(
                children: [

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      LatoText(
                        title: 'Ask me anything',
                        color: AppColor.clr_717680,
                        fontFamily: FontFamily.LatoSemibold,
                        fontSize: 18,
                      ),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {

                            },
                            child: SvgPicture.asset(
                              AppImages.mic_image,
                              height: 18,
                              width: 22,
                              fit: BoxFit.contain,
                            ),
                          ),
                          SizedBox(width: 12),
                          InkWell(
                            onTap: () {

                            },
                            child: SvgPicture.asset(
                              AppImages.uploadImage_image,
                              height: 33,
                              width: 33,
                              fit: BoxFit.contain,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20,),
                  SvgPicture.asset(
                    AppImages.voiceAnimation_image,
                    height: 30,
                    width: double.maxFinite,
                    fit: BoxFit.fill,
                  ),
                  SizedBox(height: 20,)
                ],
              ),
            )
        ),
      ),
    );
  }
}
