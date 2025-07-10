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

  static const double horizontalPadding = 14;
  static const double topLogoHeight = 60;
  static const double topLogoWidth = 84;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.clr_FFFFFF,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: AppColor.clr_FEFEFE,
        padding: const EdgeInsets.symmetric(horizontal: horizontalPadding),
        child: SafeArea(
          child: Column(
            children: [
              const SizedBox(height: 23),
              _buildHeader(),
              const SizedBox(height: 20),
              _buildMainTitle(),
              const SizedBox(height: 8),
              _buildSubText(),
              const SizedBox(height: 30),
              _buildFeatureCards(),
              const SizedBox(height: 100,),
              _buildActionButtons(),

            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildQuote(),
    );
  }

  Widget _buildHeader() {
    return Row(
      children: [
        SvgPicture.asset(
          AppImages.betterulogo_image,
          height: topLogoHeight,
          width: topLogoWidth,
          fit: BoxFit.contain,
        ),
      ],
    );
  }

  Widget _buildMainTitle() {
    return Row(
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
                  shaderCallback: (bounds) => const LinearGradient(
                    colors: [Color(0xFF7F7ED8), Color(0xFFE2A19B)],
                  ).createShader(
                    Rect.fromLTWH(0, 0, bounds.width, bounds.height),
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
    );
  }

  Widget _buildSubText() {
    return LatoText(
      title:
      'Personalized programs, guided coaching, wraparound support, and so much more.',
      fontFamily: FontFamily.LatoMedium,
      fontSize: 16,
      color: AppColor.clr_A4A7AE,
    );
  }

  Widget _buildFeatureCards() {
    return SizedBox(
      height: 168,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: welcomeController.items.length,
        separatorBuilder: (_, __) => const SizedBox(width: 20),
        itemBuilder: (context, index) {
          final item = welcomeController.items[index];
          return Container(
            width: 168,
            padding: const EdgeInsets.symmetric(vertical: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(17),
              border: Border.all(
                width: 1.7,
                color: AppColor.clr_79747E.withValues(alpha: 0.16),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 84,
                  width: 108,
                  color: AppColor.clr_D5D7DA,
                ),
                const SizedBox(height: 22),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    LatoText(
                      title: 'Better  ',
                      textAlign: TextAlign.center,
                      fontFamily: FontFamily.LatoSemibold,
                      fontSize: 19,
                      color: AppColor.clr_000000,
                    ),
                    LatoText(
                      title: item,
                      textAlign: TextAlign.center,
                      fontFamily: FontFamily.LatoSemibold,
                      fontSize: 19,
                      color: AppColor.clr_7F7ED8,
                    ),
                    const SizedBox(width: 4),
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
          );
        },
      ),
    );
  }

  Widget _buildActionButtons() {
    return Column(
      children: [
        ActionButton(
          btnHeight: 54,
          fontFamily: FontFamily.LatoBold,
          fontSize: 17,
          title: 'Get started',
          onPressed: welcomeController.goToSignupScreen,
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            LatoText(
              title: 'Already have an account?',
              fontFamily: FontFamily.LatoMedium,
              fontSize: 16,
              color: AppColor.clr_A4A7AE,
            ),
            InkWell(
              onTap: () => Get.toNamed(RoutesName.loginScreen),
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
    );
  }

  Widget _buildQuote() {
    return ShaderMask(
      shaderCallback: (bounds) => const LinearGradient(
        colors: [Color(0xFF7F7ED8), Color(0xFFE2A19B)],
      ).createShader(Rect.fromLTWH(0, 0, bounds.width, bounds.height)),
      child: SizedBox(
        height: 50,
        child: Center(
          child: const Text(
            'The journey of a thousand miles begins with a single step.',
            style: TextStyle(
              height: 1.2,
              fontSize: 12,
              fontFamily: 'LatoMedium',
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}
