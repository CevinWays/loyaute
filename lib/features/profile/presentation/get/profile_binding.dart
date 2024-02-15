import 'package:get/get.dart';
import 'package:loyaute/features/profile/presentation/get/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      ProfileController(),
    );
  }
}
