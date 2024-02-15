import 'package:get/get.dart';
import 'package:loyaute/features/history/presentation/get/history_controller.dart';

class HistoryBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(HistoryController());
  }
}
