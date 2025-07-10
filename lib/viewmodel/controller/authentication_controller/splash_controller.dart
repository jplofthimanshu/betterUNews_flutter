import 'package:better_u_news/app/routes/route_names.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {

  @override
  void onInit() {
    super.onInit();
    Future.delayed(const Duration(seconds: 3), () {
      Get.offNamed(RoutesName.welcomeScreen);
    });
  }
}