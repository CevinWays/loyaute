import 'package:get/get.dart';
import 'package:loyaute/features/onboarding/presentation/get/onboarding_controller.dart';


class OnBoardingBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      OnBoardingController(),
    );
  }
}