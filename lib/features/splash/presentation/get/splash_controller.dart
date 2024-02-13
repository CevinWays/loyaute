import 'dart:async';

import 'package:get/get.dart';
import 'package:loyaute/features/onboarding/presentation/pages/onboarding_page.dart';

class SplashController extends GetxController {
  @override
  void onReady() {
    super.onReady();
    _gotoMain();
  }

  void _gotoMain() {
    Timer(const Duration(seconds: 2), () {
      Get.offAllNamed(OnboardingPage.routeName);
    });
  }
}
