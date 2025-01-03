import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'modules/onboarding/bindings/onboarding_binding.dart';
import 'modules/onboarding/views/onboarding_view.dart';
import 'modules/login/bindings/login_binding.dart';
import 'modules/login/views/login_view.dart';
import 'modules/home/bindings/home_binding.dart';
import 'modules/home/views/home_view.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: 'COTS Gojek App',
      theme: ThemeData(
        useMaterial3: true,
      ),
      initialRoute: '/onboarding',
      getPages: [
        GetPage(
          name: '/onboarding',
          page: () => const OnboardingView(),
          binding: OnboardingBinding(),
        ),
        GetPage(
          name: '/login',
          page: () => const LoginView(),
          binding: LoginBinding(),
        ),
        GetPage(
          name: '/home',
          page: () => const HomeView(),
          binding: HomeBinding(),
        ),
      ],
    ),
  );
}
