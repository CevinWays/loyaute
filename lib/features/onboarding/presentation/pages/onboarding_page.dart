import 'package:flutter/material.dart';
import '../../../../app/styles/colors.dart';

class OnboardingPage extends StatelessWidget {
  static const String routeName = '/onboarding';
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueLoyautePrimary,
      body: Center(
        child: Container(
          child: Text(
            'Onboarding Page',
            style: TextStyle(color: whiteClear100),
          ),
        ),
      ),
    );
  }
}
