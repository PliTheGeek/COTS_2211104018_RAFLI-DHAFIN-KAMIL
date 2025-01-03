// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get/get.dart';
import 'package:cots/main.dart';
import 'package:cots/modules/onboarding/views/onboarding_view.dart';

void main() {
  testWidgets('Onboarding smoke test', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(
      GetMaterialApp(
        home: const OnboardingView(),
      ),
    );

    // Verify that first onboarding page is shown
    expect(find.byType(OnboardingView), findsOneWidget);
  });
}
