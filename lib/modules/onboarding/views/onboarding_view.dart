import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../controllers/onboarding_controller.dart';
import '../../../design_system/tokens/typography.dart';
import '../../../design_system/tokens/colors.dart';
import '../models/onboarding_content.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);

  static final List<OnboardingContent> onboardingPages = [
    OnboardingContent(
      image: 'assets/images/illustrations/onboarding1.png',
      title: 'Selamat datang di gojek!',
      description:
          'Aplikasi yang bikin hidupmu lebih nyaman. Siap bantuin  semua kebutuhan mu, kapanpun, dan dimanapun',
    ),
    OnboardingContent(
      image: 'assets/images/illustrations/onboarding2.png',
      title: 'Transportasi & logistik',
      description:
          'Antarin kamu jalan atau ambilin barang lebih gampang tinggal  ngeklik doang~',
    ),
    OnboardingContent(
      image: 'assets/images/illustrations/onboarding3.png',
      title: 'Pesan makan & belanja',
      description: 'Lagi ngidam sesuatu? Gojek beliin gak pakai lama.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.onPageChanged,
            children: onboardingPages
                .map((content) => _OnboardingPage(
                      image: content.image,
                      title: content.title,
                      description: content.description,
                    ))
                .toList(),
          ),
          Positioned(
            bottom: 50,
            left: 24,
            right: 24,
            child: Column(
              children: [
                Obx(() => Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(3, (index) => _buildDot(index)),
                    )),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    onPressed: controller.nextPage,
                    style: ElevatedButton.styleFrom(
                      backgroundColor: DSColors.primarySwatch[900],
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: const Text(
                      'Masuk',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 16),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: OutlinedButton(
                    onPressed: controller.nextPage,
                    style: OutlinedButton.styleFrom(
                      side: BorderSide(color: DSColors.primarySwatch[900]!),
                      foregroundColor: DSColors.primarySwatch[900],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(24),
                      ),
                    ),
                    child: Text(
                      'Belum ada akun? Daftar dulu',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: DSColors.primarySwatch[900] ??
                            const Color.fromARGB(255, 255, 255, 255),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDot(int index) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      width: 8,
      height: 8,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        color: controller.currentPage.value == index
            ? DSColors.primary
            : Colors.grey,
      ),
    );
  }
}

class _OnboardingPage extends StatelessWidget {
  final String image;
  final String title;
  final String description;

  const _OnboardingPage({
    required this.image,
    required this.title,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(image),
        const SizedBox(height: 40),
        Text(
          title,
          style: DSTypography.h1,
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Text(
            description,
            style: DSTypography.bodyLarge,
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
