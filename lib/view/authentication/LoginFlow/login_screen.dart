import 'package:better_u_news/viewmodel/controller/authentication_controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:better_u_news/app/routes/route_names.dart';
import 'package:better_u_news/view/app_component/authentication_textfield.dart';
import 'package:better_u_news/viewmodel/controller/authentication_controller/signup_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../app/constants/app_colors.dart';
import '../../../app/constants/app_fonts.dart';
import '../../../app/constants/app_images.dart';
import '../../app_component/action_button.dart';
import '../../app_component/lato_text.dart';



class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  LoginController _loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                            title: 'Welcome back',
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
                        final bool isEmail = _loginController.isEmailSelected.value;

                        // pick whatever colour you want for the selected pill
                        const Color selectedBg = AppColor.clr_0A0D12;      // dark/primary
                        const Color unselectedText = AppColor.clr_000000;  // grey

                        return Container(
                          padding: const EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(60),
                            border: Border.all(width: 1, color: AppColor.clr_D7D7D7),
                          ),
                          child: Container(
                            height: 40,
                            width: _loginController.totalWidth,
                            decoration: BoxDecoration(
                              color: Colors.transparent,
                              borderRadius: BorderRadius.circular(19),
                            ),
                            child: Stack(
                              children: [
                                // moving pill ─ colour changed here
                                AnimatedAlign(
                                  duration: const Duration(milliseconds: 280),
                                  curve: Curves.easeOutCubic,
                                  alignment:
                                  isEmail ? Alignment.centerLeft : Alignment.centerRight,
                                  child: Container(
                                    height: 40,
                                    width: _loginController.totalWidth / 2,
                                    decoration: BoxDecoration(
                                      color: selectedBg,                    // <── new
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
                                        onTap: () => _loginController.isEmailSelected.value = true,
                                        child: Center(
                                          child: AnimatedDefaultTextStyle(
                                            duration: const Duration(milliseconds: 200),
                                            style: TextStyle(
                                              fontFamily: 'LatoRegular',
                                              fontSize: 16,
                                              color: isEmail ? Colors.white : unselectedText,
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
                                        onTap: () => _loginController.isEmailSelected.value = false,
                                        child: Center(
                                          child: AnimatedDefaultTextStyle(
                                            duration: const Duration(milliseconds: 200),
                                            style: TextStyle(
                                              fontFamily: 'LatoRegular',
                                              fontSize: 16,
                                              color: isEmail ? unselectedText : Colors.white,   // <── new
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
                          ),
                        );
                      }),

                      SizedBox(height: 20),

                      Obx(() {
                        return Column(
                          children: [
                            if (_loginController.isEmailSelected.value)
                              AuthenticationTextfield(
                                controller: _loginController.emailCtrl.value,
                                topLabel: 'Email',
                                placeholder: 'user@gmail.com',
                              ),
                            if (!_loginController.isEmailSelected.value)
                              AuthenticationTextfield_PhoneNumber(
                                controller: _loginController.phoneCtrl.value,
                                topLabel: 'Phone',
                                placeholder: 'user@gmail.com',
                              ),

                            if (_loginController.isEmailSelected.value)
                              Column(
                                children: [
                                  SizedBox(height: 15),
                                  AuthenticationTextfield(
                                    controller: _loginController.passwordCtrl.value,
                                    topLabel: 'Password *',
                                    placeholder: 'Password',
                                    isPassword: true,
                                    isSecure: _loginController.passwordIsSecure.value,
                                    passworSecure: () {
                                      _loginController.passwordIsSecure.value = !_loginController.passwordIsSecure.value;
                                    },
                                  ),
                                ],
                              ),
                          ],
                        );
                      }),

                      SizedBox(height: 20),
                      ActionButton(
                        btnHeight: 54,
                        fontFamily: FontFamily.LatoBold,
                        fontSize: 17,
                        title: 'Continue',
                        onPressed: () {
                          Get.toNamed(RoutesName.verifyOTPScreen);
                        },
                      ),

                      SizedBox(height: 20),
                      Row(
                        children: [
                          InkWell(
                            onTap: () {
                              Get.toNamed(RoutesName.forgotPasswordScreen);
                            },
                            child: ShaderMask(
                              shaderCallback: (bounds) =>
                                  LinearGradient(
                                    colors: [Color(0xFF7F7ED8), Color(0xFFE2A19B)],
                                  ).createShader(
                                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                                  ),
                              child: Text(
                                'Forgot your Password?',
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
                      )
                    ],
                  ),
                ),
              ),

              Column(
                children: [
                  SizedBox(height: 30,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      LatoText(title: 'First time here? ',fontSize: 16,fontFamily: FontFamily.LatoRegular,),
                      ShaderMask(
                        shaderCallback: (bounds) =>
                            LinearGradient(
                              colors: [Color(0xFF7F7ED8), Color(0xFFE2A19B)],
                            ).createShader(
                              Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                            ),
                        child: Text(
                          'Create an account',
                          style: TextStyle(
                            height: 1.2,
                            fontSize: 16,
                            fontFamily: FontFamily.LatoRegular.value,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 30,),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
