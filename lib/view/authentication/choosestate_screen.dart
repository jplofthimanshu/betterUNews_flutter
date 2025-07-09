import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/app/constants/app_images.dart';
import 'package:better_u_news/app/routes/route_names.dart';
import 'package:better_u_news/view/app_component/action_button.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:better_u_news/viewmodel/controller/authentication_controller/choosestate_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class ChoosestateScreen extends StatefulWidget {
  const ChoosestateScreen({super.key});

  @override
  State<ChoosestateScreen> createState() => _ChoosestateScreenState();
}

class _ChoosestateScreenState extends State<ChoosestateScreen> {
  ChoosestateController choosestateController = Get.put(
    ChoosestateController(),
  );

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
          overlayColor: MaterialStateProperty.all(Colors.transparent),
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
              LatoText(
                title: 'Where do you currently call home?',
                fontFamily: FontFamily.LatoBold,
                fontSize: 30,
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
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    LatoText(
                      title: 'Choose your state',
                      color: AppColor.clr_A4A7AE,
                      fontFamily: FontFamily.LatoRegular,
                      fontSize: 15,
                    ),
                    Icon(Icons.keyboard_arrow_down, color: AppColor.clr_ACADBC),
                  ],
                ),
              ),

              SizedBox(height: 16),
              Row(
                crossAxisAlignment: CrossAxisAlignment
                    .center, // top‑align so the icon sits nicely
                children: [
                  Obx(() {
                    return InkWell(
                      onTap: () {
                        choosestateController.isTermConditionSelected.value =
                        !choosestateController.isTermConditionSelected.value;
                      },
                      child: choosestateController.isTermConditionSelected.value
                          ? SvgPicture.asset(
                        AppImages.checkbox_image,
                        height: 18,
                        width: 18,
                        fit: BoxFit.contain,
                      )
                          : Container(
                        height: 18,
                        width: 18,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(4),
                          border: Border.all(
                            width: 1,
                            color: AppColor.clr_E9EAEB,
                          ),
                        ),
                      ),
                    );
                  }),
                  SizedBox(width: 10),
                  Expanded(
                    child: RichText(
                      text: TextSpan(
                        text: 'I agree to the ',
                        style: TextStyle(
                          fontSize: 14,
                          height:
                          1.4,
                          // a little breathing room between wrapped lines
                          fontFamily: FontFamily
                              .LatoRegular
                              .value,
                          // use .value only if FontFamily is an enum
                          color: AppColor.clr_1E1E1E,
                        ),
                        children: [
                          TextSpan(
                            // no need for WidgetSpan unless you need a widget
                            text:
                            'Telehealth Consent, HIPAA Consent, and Terms',
                            style: TextStyle(
                              fontFamily: FontFamily.LatoBold.value,
                              decoration: TextDecoration.underline,
                              fontSize: 13.5,
                            ),
                          ),
                          const TextSpan(text: ' and '),
                          TextSpan(
                            text: 'Privacy Policy',
                            style: TextStyle(
                              fontFamily: FontFamily.LatoBold.value,
                              decoration: TextDecoration.underline,
                              fontSize: 13.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),

              SizedBox(height: 25),
              ActionButton(
                btnHeight: 52,
                fontFamily: FontFamily.LatoBold,
                fontSize: 17,
                title: 'Next',
                onPressed: () {
                  Get.toNamed(RoutesName.birthDateScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
