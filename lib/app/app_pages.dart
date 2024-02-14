import 'package:get/get.dart';
import 'package:loyaute/features/login/presentation/get/login_binding.dart';
import 'package:loyaute/features/login/presentation/pages/login_page.dart';
import 'package:loyaute/features/onboarding/presentation/get/onboarding_binding.dart';
import 'package:loyaute/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:loyaute/features/otp/presentation/get/otp_binding.dart';
import 'package:loyaute/features/otp/presentation/pages/otp_page.dart';
import 'package:loyaute/features/register/presentation/get/register_binding.dart';
import 'package:loyaute/features/register/presentation/pages/register_page.dart';

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
  GetPage(
    name: RegisterPage.routeName,
    page: () => const RegisterPage(),
    binding: RegisterBinding(),
  ),
  GetPage(
    name: LoginPage.routeName,
    page: () => const LoginPage(),
    binding: LoginBinding(),
  ),
  GetPage(
    name: OtpPage.routeName,
    page: () => const OtpPage(),
    binding: OtpBinding(),
  ),
];
