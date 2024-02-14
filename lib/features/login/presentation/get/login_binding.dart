import 'package:get/get.dart';
import 'package:loyaute/features/login/presentation/get/login_controller.dart';


class LoginBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      LoginController(),
    );
  }
}