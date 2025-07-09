import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class ForgotpasswordController extends GetxController {
  final RxBool isEmailSelected = true.obs;
  final double totalWidth = 249;

  final emailCtrl = TextEditingController().obs;
  final phoneCtrl = TextEditingController().obs;
  final passwordCtrl = TextEditingController().obs;
  final RxBool passwordIsSecure = false.obs;
}