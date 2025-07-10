import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/viewmodel/controller/authentication_controller/forgotpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../app/constants/app_fonts.dart';
import '../../../app/constants/app_images.dart';
import '../../../app/routes/route_names.dart';
import '../../app_component/action_button.dart';
import '../../app_component/authentication_textfield.dart';
import '../../app_component/lato_text.dart';

class ForgotpasswordScreen extends StatefulWidget {
  const ForgotpasswordScreen({super.key});

  @override
  State<ForgotpasswordScreen> createState() => _ForgotpasswordScreenState();
}

class _ForgotpasswordScreenState extends State<ForgotpasswordScreen> {

  final ForgotpasswordController _forgotpasswordController = Get.put(ForgotpasswordController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
      ),
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: AppColor.clr_FEFEFE,
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: SafeArea(
          child: Column(
            children: [
              SizedBox(height: 50),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LatoText(
                    title: 'Forgot password?',
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
                    title: 'Enter your email address',
                    fontFamily: FontFamily.LatoMedium,
                    fontSize: 14,
                    color: AppColor.clr_717680,
                  ),
                ],
              ),

              SizedBox(height: 32),
              AuthenticationTextfield(
                controller: _forgotpasswordController.emailCtrl.value,
                topLabel: 'Email',
                placeholder: 'user@gmail.com',
              ),

              SizedBox(height: 20),
              ActionButton(
                btnHeight: 54,
                fontFamily: FontFamily.LatoBold,
                fontSize: 17,
                title: 'Reset Password',
                onPressed: () {
                  Get.toNamed(RoutesName.resetPasswordScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

}
