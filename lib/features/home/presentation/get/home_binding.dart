import 'package:get/get.dart';
import 'package:loyaute/features/home/presentation/get/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      HomeController(),
    );
  }
}
