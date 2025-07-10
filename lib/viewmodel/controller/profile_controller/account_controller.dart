import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {

  final RxList<String> listItem = [
    'Contact information',
    'Treatments',
    'Order history',
    'Payment method',
    'Help center',
    'Privacy and consent',
    'Report a bug',
    'Documents',
    'Delete account'
  ].obs;
}