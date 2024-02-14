import 'package:get/get.dart';
import 'package:loyaute/features/register/presentation/get/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      RegisterController(),
    );
  }
}