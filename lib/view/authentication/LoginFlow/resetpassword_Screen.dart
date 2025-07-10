import 'package:better_u_news/viewmodel/controller/authentication_controller/resetpassword_controller.dart';
import 'package:flutter/material.dart';
import 'package:better_u_news/view/app_component/authentication_textfield.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../app/constants/app_colors.dart';
import '../../../app/constants/app_fonts.dart';
import '../../../app/constants/app_images.dart';
import '../../app_component/action_button.dart';
import '../../app_component/lato_text.dart';


class ResetpasswordScreen extends StatefulWidget {
  const ResetpasswordScreen({super.key});

  @override
  State<ResetpasswordScreen> createState() => _ResetpasswordScreenState();
}

class _ResetpasswordScreenState extends State<ResetpasswordScreen> {

  final ResetpasswordController _resetpasswordController = Get.put(ResetpasswordController());

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
                    title: 'Reset password',
                    fontFamily: FontFamily.LatoSemibold,
                    fontSize: 30,
                  ),
                ],
              ),

              SizedBox(height: 20),
              Obx(() {
                return Column(
                  children: [
                    AuthenticationTextfield(
                      controller: _resetpasswordController.passwordCtrl.value,
                      topLabel: 'New Password *',
                      placeholder: 'New Password',
                      isPassword: true,
                      isSecure: _resetpasswordController.passwordIsSecure.value,
                      onToggleSecure: () {
                        _resetpasswordController.passwordIsSecure.value = !_resetpasswordController.passwordIsSecure.value;
                      },
                    ),
                    SizedBox(height: 10),
                    AuthenticationTextfield(
                      controller: _resetpasswordController.passwordCtrl.value,
                      topLabel: 'Confirm Password *',
                      placeholder: 'Confirm Password',
                      isPassword: true,
                      isSecure: _resetpasswordController.passwordIsSecure.value,
                      onToggleSecure: () {
                        _resetpasswordController.passwordIsSecure.value = !_resetpasswordController.passwordIsSecure.value;
                      },
                    ),
                  ],
                );
              }),

              SizedBox(height: 20),
              ActionButton(
                btnHeight: 54,
                fontFamily: FontFamily.LatoBold,
                fontSize: 17,
                title: 'Update Password',
                onPressed: () {

                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
