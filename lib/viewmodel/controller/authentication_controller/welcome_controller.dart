
import 'package:better_u_news/app/routes/route_names.dart';
import 'package:get/get.dart';

class WelcomeController extends GetxController {

  final RxList<String> items = ['mind', 'sex', 'xyz'].obs;

  void goToSignupScreen() {
    Get.toNamed(RoutesName.signupScreen);
  }

}