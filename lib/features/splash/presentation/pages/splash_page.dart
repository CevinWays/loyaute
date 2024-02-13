import 'package:flutter/material.dart';
import 'package:loyaute/app/styles/colors.dart';

class SplashPage extends StatelessWidget {
  static const String routeName = '/splash';
  const SplashPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: blueLoyautePrimary,
      body: Center(
        child: Container(
          child: Text(
            'Loyauté',
            style: TextStyle(color: whiteClear100),
          ),
        ),
      ),
    );
  }
}
