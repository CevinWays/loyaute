import 'package:get/get.dart';
import 'package:loyaute/features/history/presentation/pages/history_page.dart';
import 'package:loyaute/features/home/presentation/pages/home_page.dart';

class ProfileController extends GetxController{
  void onItemTapped(int index) {
    if (index == 0) {
      Get.offAllNamed(HomePage.routeName);
    } else if (index == 1) {
      Get.offAllNamed(HistoryPage.routeName);
    }
  }
}