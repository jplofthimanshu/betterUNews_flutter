import 'package:better_u_news/app/routes/route_names.dart';
import 'package:better_u_news/view/app_component/authentication_textfield.dart';
import 'package:better_u_news/viewmodel/controller/authentication_controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../app/constants/app_colors.dart';
import '../../app/constants/app_fonts.dart';
import '../../app/constants/app_images.dart';
import '../app_component/action_button.dart';
import '../app_component/lato_text.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final SignupController _signupController = Get.put(SignupController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.clr_FFFFFF,
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: AppColor.clr_FEFEFE,
        padding: EdgeInsets.symmetric(horizontal: 14),
        child: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      SizedBox(height: 23),
                      Row(
                        children: [
                          SvgPicture.asset(
                            AppImages.betterulogo_image,
                            height: 60,
                            width: 84,
                            fit: BoxFit.contain,
                          ),
                        ],
                      ),

                      SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          LatoText(
                            title: 'Create account',
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
                            title: 'The Journey to your best self awaits.',
                            fontFamily: FontFamily.LatoMedium,
                            fontSize: 14,
                            color: AppColor.clr_A4A7AE,
                          ),
                        ],
                      ),

                      SizedBox(height: 30),

                      Obx(() {
                        final bool isEmail = _signupController.isEmailSelected.value;
                        return Container(
                          height: 40,
                          width: _signupController.totalWidth,
                          decoration: BoxDecoration(
                            color: AppColor.clr_F5F5F5,
                            borderRadius: BorderRadius.circular(19),
                          ),
                          child: Stack(
                            children: [
                              AnimatedAlign(
                                duration: const Duration(milliseconds: 280),
                                curve: Curves.easeOutCubic,
                                alignment: isEmail
                                    ? Alignment.centerLeft
                                    : Alignment.centerRight,
                                child: Container(
                                  height: 40,
                                  width: _signupController.totalWidth / 2,
                                  decoration: BoxDecoration(
                                    color: AppColor.clr_E9EAEB,
                                    borderRadius: BorderRadius.circular(19),
                                  ),
                                ),
                              ),
                              Row(
                                children: [
                                  // EMAIL
                                  Expanded(
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(19),
                                      onTap: () =>
                                      _signupController.isEmailSelected.value =
                                      true,
                                      child: Center(
                                        child: AnimatedDefaultTextStyle(
                                          duration: const Duration(milliseconds: 200),
                                          style: TextStyle(
                                            fontFamily: 'LatoRegular',
                                            fontSize: 16,
                                            color: AppColor.clr_000000.withValues(
                                              alpha: isEmail ? 1.0 : 0.55,
                                            ),
                                          ),
                                          child: const Text('Email'),
                                        ),
                                      ),
                                    ),
                                  ),

                                  // PHONE
                                  Expanded(
                                    child: InkWell(
                                      borderRadius: BorderRadius.circular(19),
                                      onTap: () =>
                                      _signupController.isEmailSelected.value =
                                      false,
                                      child: Center(
                                        child: AnimatedDefaultTextStyle(
                                          duration: const Duration(milliseconds: 200),
                                          style: TextStyle(
                                            fontFamily: 'LatoRegular',
                                            fontSize: 16,
                                            color: AppColor.clr_000000.withValues(
                                              alpha: isEmail ? 0.55 : 1.0,
                                            ),
                                          ),
                                          child: const Text('Phone'),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        );
                      }),

                      SizedBox(height: 20),

                      Obx(() {
                        return Column(
                          children: [
                            if (_signupController.isEmailSelected.value)
                              AuthenticationTextfield(
                                controller: _signupController.emailCtrl.value,
                                topLabel: 'Email',
                                placeholder: 'user@gmail.com',
                              ),
                            if (!_signupController.isEmailSelected.value)
                              AuthenticationTextfieldPhoneNumber(
                                controller: _signupController.phoneCtrl.value,
                                topLabel: 'Phone',
                                placeholder: 'user@gmail.com',
                              ),

                            if (_signupController.isEmailSelected.value)
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  AuthenticationTextfield(
                                    controller: _signupController.passwordCtrl.value,
                                    topLabel: 'Password *',
                                    placeholder: 'Password',
                                    isPassword: true,
                                    isSecure: _signupController.passwordIsSecure.value,
                                    onToggleSecure: () {
                                      _signupController.passwordIsSecure.value = !_signupController.passwordIsSecure.value;
                                    },
                                  ),
                                ],
                              ),
                          ],
                        );
                      }),

                      SizedBox(height: 20),
                      Obx(() {
                        return ActionButton(
                          btnHeight: 54,
                          fontFamily: FontFamily.LatoBold,
                          fontSize: 17,
                          title: _signupController.isEmailSelected.value
                              ? 'Sign Up'
                              : 'Continue',
                          onPressed: () {
                            Get.toNamed(RoutesName.verifyOTPScreen);
                          },
                        );
                      }),

                      SizedBox(height: 20),
                      LatoText(
                        title: 'or',
                        fontFamily: FontFamily.LatoRegular,
                        fontSize: 15,
                        color: AppColor.clr_A4A7AE,
                      ),

                      SizedBox(height: 20),
                      Row(
                        children: [
                          Expanded(
                            child: Container(
                              height: 56,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  border: Border.all(
                                      width: 1, color: AppColor.clr_CBD5E1)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppImages.google_image,
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 8,),
                                  LatoText(
                                    title: 'Google',
                                    fontFamily: FontFamily.LatoMedium,
                                    color: AppColor.clr_64748B,
                                    fontSize: 14,
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(width: 8,),
                          Expanded(
                            child: Container(
                              height: 56,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(28),
                                  border: Border.all(
                                      width: 1, color: AppColor.clr_CBD5E1)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SvgPicture.asset(
                                    AppImages.facebook_image,
                                    height: 20,
                                    width: 20,
                                    fit: BoxFit.contain,
                                  ),
                                  SizedBox(width: 8,),
                                  LatoText(
                                    title: 'Facebook',
                                    fontFamily: FontFamily.LatoMedium,
                                    color: AppColor.clr_64748B,
                                    fontSize: 14,
                                  )
                                ],
                              ),
                            ),
                          )
                        ],
                      ),


                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              LatoText(title: 'Already have an account? ',fontSize: 16,fontFamily: FontFamily.LatoRegular,),
              InkWell(
                onTap: () {
                  Get.toNamed(RoutesName.loginScreen);
                },
                child: ShaderMask(
                  shaderCallback: (bounds) =>
                      LinearGradient(
                        colors: [Color(0xFF7F7ED8), Color(0xFFE2A19B)],
                      ).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                  child: Text(
                    'Sign in',
                    style: TextStyle(
                      height: 1.2,
                      fontSize: 16,
                      fontFamily: FontFamily.LatoRegular.value,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20,),
        ],
      ),
    );
  }
}
