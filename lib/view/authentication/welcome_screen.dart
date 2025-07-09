import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_fonts.dart';
import 'package:better_u_news/app/constants/app_images.dart';
import 'package:better_u_news/app/routes/route_names.dart';
import 'package:better_u_news/view/app_component/action_button.dart';
import 'package:better_u_news/view/app_component/lato_text.dart';
import 'package:better_u_news/viewmodel/controller/authentication_controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  final WelcomeController welcomeController = Get.put(WelcomeController());

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
                  RichText(
                    text: TextSpan(
                      text: 'Your mental health \njourney ',
                      style: TextStyle(
                        height: 1,
                        fontSize: 30,
                        fontFamily: FontFamily.LatoMedium.value,
                        color: Colors.black,
                      ),
                      children: [
                        WidgetSpan(
                          alignment: PlaceholderAlignment.baseline,
                          baseline: TextBaseline.alphabetic,
                          child: ShaderMask(
                            shaderCallback: (bounds) =>
                                LinearGradient(
                                  colors: [
                                    Color(0xFF7F7ED8),
                                    Color(0xFFE2A19B),
                                  ],
                                ).createShader(
                                  Rect.fromLTWH(
                                    0,
                                    0,
                                    bounds.width,
                                    bounds.height,
                                  ),
                                ),
                            child: Text(
                              'starts here',
                              style: TextStyle(
                                height: 1,
                                fontSize: 30,
                                fontFamily: FontFamily.LatoMedium.value,
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 8),
              LatoText(
                title:
                    'Personalized programs, guided coaching, wraparound support, and so much more.',
                fontFamily: FontFamily.LatoMedium,
                fontSize: 16,
                color: AppColor.clr_A4A7AE,
              ),

              SizedBox(height: 30),
              SizedBox(
                height: 168,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: welcomeController.items.length,
                  itemBuilder: (context, index) => Container(
                    height: 174,
                    width: 168,
                    margin: EdgeInsets.only(right: 20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      border: Border.all(
                        width: 1.7,
                        color: AppColor.clr_79747E.withOpacity(0.16),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          height: 84,
                          width: 108,
                          color: AppColor.clr_D5D7DA,
                        ),
                        SizedBox(height: 22),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            LatoText(
                              title: 'Better ',
                              textAlign: TextAlign.center,
                              fontFamily: FontFamily.LatoSemibold,
                              fontSize: 19,
                              color: AppColor.clr_000000,
                            ),
                            LatoText(
                              title: welcomeController.items[index],
                              textAlign: TextAlign.center,
                              fontFamily: FontFamily.LatoSemibold,
                              fontSize: 19,
                              color: AppColor.clr_7F7ED8,
                            ),
                            SizedBox(width: 4),
                            SvgPicture.asset(
                              AppImages.rightArrow_image,
                              width: 14,
                              height: 14,
                              fit: BoxFit.cover,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),

              Spacer(),
              Column(
                children: [
                  ActionButton(
                    btnHeight: 54,
                    fontFamily: FontFamily.LatoBold,
                    fontSize: 17,
                    title: 'Get started',
                    onPressed: () {
                      welcomeController.goToSignupScreen();
                    },
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      LatoText(
                        title: 'Already have an account?',
                        fontFamily: FontFamily.LatoMedium,
                        fontSize: 16,
                        color: AppColor.clr_A4A7AE,
                      ),
                      InkWell(
                        onTap: () {
                          Get.toNamed(RoutesName.loginScreen);
                        },
                        child: LatoText(
                          title: '  Log in',
                          fontFamily: FontFamily.LatoMedium,
                          fontSize: 16,
                          color: AppColor.clr_000000,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),

              ShaderMask(
                shaderCallback: (bounds) =>
                    LinearGradient(
                      colors: [Color(0xFF7F7ED8), Color(0xFFE2A19B)],
                    ).createShader(
                      Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                    ),
                child: Text(
                  'The journey of a thousand miles begins with a single step.',
                  style: TextStyle(
                    height: 1.2,
                    fontSize: 12,
                    fontFamily: FontFamily.LatoMedium.value,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
