import 'package:get/get.dart';
import 'package:loyaute/features/history/presentation/get/history_binding.dart';
import 'package:loyaute/features/history/presentation/pages/history_page.dart';
import 'package:loyaute/features/home/presentation/get/home_binding.dart';
import 'package:loyaute/features/home/presentation/pages/home_page.dart';
import 'package:loyaute/features/login/presentation/get/login_binding.dart';
import 'package:loyaute/features/login/presentation/pages/login_page.dart';
import 'package:loyaute/features/onboarding/presentation/get/onboarding_binding.dart';
import 'package:loyaute/features/onboarding/presentation/pages/onboarding_page.dart';
import 'package:loyaute/features/otp/presentation/get/otp_binding.dart';
import 'package:loyaute/features/otp/presentation/pages/otp_page.dart';
import 'package:loyaute/features/profile/presentation/get/profile_binding.dart';
import 'package:loyaute/features/profile/presentation/pages/profile_page.dart';
import 'package:loyaute/features/register/presentation/get/register_binding.dart';
import 'package:loyaute/features/register/presentation/pages/register_page.dart';
import 'package:loyaute/features/voucher/presentation/get/voucher_binding.dart';
import 'package:loyaute/features/voucher/presentation/pages/voucher_page.dart';

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
  GetPage(
    name: HomePage.routeName,
    page: () => HomePage(),
    binding: HomeBinding(),
  ),
  GetPage(
    name: ProfilePage.routeName,
    page: () => const ProfilePage(),
    binding: ProfileBinding(),
  ),
  GetPage(
    name: HistoryPage.routeName,
    page: () => const HistoryPage(),
    binding: HistoryBinding(),
  ),
  GetPage(
    name: VoucherPage.routeName,
    page: () => const VoucherPage(),
    binding: VoucherBinding(),
  ),
];
