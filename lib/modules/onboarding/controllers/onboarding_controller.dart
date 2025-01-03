import 'package:get/get.dart';
import 'package:flutter/material.dart'; // Add this import for PageController

class OnboardingController extends GetxController {
  final currentPage = 0.obs;
  final pageController = PageController();

  void onPageChanged(int index) {
    currentPage.value = index;
  }

  void nextPage() {
    if (currentPage.value < 2) {
      pageController.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease,
      );
    } else {
      // Navigasi Ke Halaman Login
      Get.offAllNamed('/login');
    }
  }
}
