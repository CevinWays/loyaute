import 'package:get/get.dart';
import 'package:loyaute/features/onboarding/presentation/get/onboarding_binding.dart';
import 'package:loyaute/features/onboarding/presentation/pages/onboarding_page.dart';

import '../features/splash/presentation/get/splash_binding.dart';
import '../features/splash/presentation/pages/splash_page.dart';

const initialPageRoute = SplashPage.routeName;

final pageRoutes = [
  GetPage(
    name: SplashPage.routeName,
    page: () => const SplashPage(),
    binding: SplashBinding(),
  ),
  GetPage(
    name: OnboardingPage.routeName,
    page: () => const OnboardingPage(),
    binding: OnBoardingBinding(),
  ),
];
