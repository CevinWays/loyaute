import 'package:get/get.dart';
import 'package:loyaute/features/voucher/presentation/get/voucher_controller.dart';

class VoucherBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(
      VoucherController(),
    );
  }
}