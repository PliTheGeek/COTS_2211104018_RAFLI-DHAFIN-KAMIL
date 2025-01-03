import 'package:get/get.dart';

class LoginController extends GetxController {
  final phoneNumber = ''.obs;

  void updatePhoneNumber(String value) {
    phoneNumber.value = value;
  }

  void continueToHome() {
    Get.offAllNamed('/home');
  }
}
