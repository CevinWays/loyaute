import 'package:get/get.dart';
import 'package:loyaute/features/home/presentation/pages/home_page.dart';
import 'package:loyaute/features/profile/presentation/pages/profile_page.dart';

class HistoryController extends GetxController {
  void onItemTapped(int index) {
    if (index == 0) {
      Get.offAllNamed(HomePage.routeName);
    } else if (index == 3) {
      Get.offAllNamed(ProfilePage.routeName);
    }
  }
}