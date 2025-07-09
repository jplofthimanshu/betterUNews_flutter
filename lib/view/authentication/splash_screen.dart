import 'package:better_u_news/app/constants/app_colors.dart';
import 'package:better_u_news/app/constants/app_images.dart';
import 'package:better_u_news/viewmodel/controller/authentication_controller/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  final SplashController splashController = Get.put(SplashController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: AppColor.clr_FEFEFE,
        child: Stack(
          children: [
            SvgPicture.asset(
              AppImages.spashscreen_bg_image,
              height: double.maxFinite,
              width: double.maxFinite,
              fit: BoxFit.cover,
            ),
            Center(
              child: SvgPicture.asset(
                AppImages.betterulogo_image,
                height: 140,
                width: 200,
                fit: BoxFit.contain,
              ),
            )
          ],
        ),
      ),
    );
  }
}
