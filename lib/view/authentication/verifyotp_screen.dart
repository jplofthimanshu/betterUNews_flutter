import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/app/constants/app_images.dart';
import 'package:better_u_news/app/routes/route_names.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../../app/constants/app_colors.dart';

class VerifyotpScreen extends StatefulWidget {
  const VerifyotpScreen({super.key});

  @override
  State<VerifyotpScreen> createState() => _VerifyotpScreenState();
}

class _VerifyotpScreenState extends State<VerifyotpScreen> {
  final TextEditingController otpController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final double fieldWidth = (MediaQuery.of(context).size.width - 32) / 4;
    PinTheme underlineTheme(Color color) => PinTheme(
      width: fieldWidth,
      height: 56,
      textStyle: TextStyle(fontSize: 28, fontFamily: 'LatoRegular'),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: color, width: 2)),
      ),
    );

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
        centerTitle: true ,
        title: LatoText(
          title: 'Getting started',
          fontFamily: FontFamily.LatoBold,
          fontSize: 20,
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
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LatoText(
                    title: 'Verify',
                    fontFamily: FontFamily.LatoSemibold,
                    fontSize: 30,
                  ),
                ],
              ),

              SizedBox(height: 8),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LatoText(
                    title: 'Enter the code sent to your [email/phone]',
                    fontFamily: FontFamily.LatoMedium,
                    fontSize: 14,
                    color: AppColor.clr_A4A7AE,
                  ),
                ],
              ),

              SizedBox(height: 25),

              Pinput(
                controller: otpController,
                length: 4,
                defaultPinTheme: underlineTheme(AppColor.clr_D5D7DA),
                focusedPinTheme: underlineTheme(AppColor.clr_D5D7DA),
                submittedPinTheme: underlineTheme(AppColor.clr_A4A7AE),
                onCompleted: (pin) => {
                  Get.toNamed(RoutesName.chooseStateScreen)
                },
              ),
              SizedBox(height: 20),
              GestureDetector(
                onTap: () {

                },
                child: LatoText(
                  title: 'Resend Code',
                  fontFamily: FontFamily.LatoMedium,
                  fontSize: 16,
                  color: AppColor.clr_A4A7AE,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
