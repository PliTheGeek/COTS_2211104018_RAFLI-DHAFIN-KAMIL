import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../design_system/tokens/colors.dart';
import '../../../design_system/tokens/typography.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.offAllNamed('/onboarding'),
        ),
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/images/logo.png',
              height: 24,
            ),
          ],
        ),
        centerTitle: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.help_outline),
            onPressed: () {
              // Handle help button tap
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Login',
              style: DSTypography.h1,
            ),
            const SizedBox(height: 8),
            Text(
              'Enter your registered phone number to log in',
              style: DSTypography.bodyLarge,
            ),
            const SizedBox(height: 32),
            TextField(
              keyboardType: TextInputType.phone,
              onChanged: controller.updatePhoneNumber,
              decoration: InputDecoration(
                label: RichText(
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'Phone Number',
                        style: TextStyle(color: Colors.black87),
                      ),
                      TextSpan(
                        text: '*',
                        style: TextStyle(color: Colors.red[700]),
                      ),
                    ],
                  ),
                ),
                prefixText: '+62 ',
              ),
            ),
            const SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              height: 48,
              child: ElevatedButton(
                onPressed: controller.continueToHome,
                style: ElevatedButton.styleFrom(
                  backgroundColor: DSColors.primarySwatch[900],
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(24),
                  ),
                ),
                child: const Text('Continue'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
