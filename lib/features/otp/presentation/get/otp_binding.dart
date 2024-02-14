import 'package:get/get.dart';
import 'package:loyaute/features/otp/presentation/get/otp_controller.dart';

class OtpBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      OtpController(),
    );
  }
  
}