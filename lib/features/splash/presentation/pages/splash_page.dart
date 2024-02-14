import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/styles/colors.dart';
import 'package:loyaute/app/styles/loyaute_text_style.dart';
import 'package:loyaute/features/splash/presentation/get/splash_controller.dart';

class SplashPage extends GetView<SplashController> {
  static const String routeName = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueLoyautePrimary,
      body: Center(
        child: Text(
          'Loyauté',
          style: LoyauteTextStyle.headline3(
            context: context,
            color: whiteClear100,
            fontWeight: FontWeight.w700,
          ),
        ),
      ),
    );
  }
}
