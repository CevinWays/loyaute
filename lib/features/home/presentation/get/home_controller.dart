import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import 'package:loyaute/features/history/presentation/pages/history_page.dart';
import 'package:loyaute/features/profile/presentation/pages/profile_page.dart';

class HomeController extends GetxController {
  final _current = 0.obs;
  final CarouselController carouselController = CarouselController();

  int get current => _current.value;

  void onItemTapped(int index) {
    if (index == 1) {
      Get.offAllNamed(HistoryPage.routeName);
    } else if (index == 3) {
      Get.offAllNamed(ProfilePage.routeName);
    }
  }

  void imageChanged(int index) {
    _current.value = index;
  }
}
