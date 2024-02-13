import 'package:flutter/material.dart';
import 'package:loyaute/app/styles/loyaute_text_theme.dart';

import 'colors.dart';

class Styles {
  static ThemeData lightTheme() {
    return ThemeData(
      primaryColor: blueLoyautePrimary,
      brightness: Brightness.light,
      textTheme: LoyauteTextTheme(),
      appBarTheme: const AppBarTheme(backgroundColor: blueLoyautePrimary),
      scaffoldBackgroundColor: whiteClear100,
      textSelectionTheme: const TextSelectionThemeData(
        cursorColor: blueLoyautePrimary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        suffixIconColor: blackSpace100,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: blackLoyaute,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(
            color: blueLoyautePrimary,
            width: 1.5,
          ),
        ),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            blueLoyautePrimary,
          ),
          side: MaterialStateProperty.all<BorderSide>(
            const BorderSide(
              color: blueLoyautePrimary,
            ),
          ),
        ),
      ),
      textButtonTheme: TextButtonThemeData(
        style: ButtonStyle(
          foregroundColor: MaterialStateProperty.all<Color>(
            blackLoyaute,
          ),
        ),
      ),
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: blueLoyautePrimary,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: whiteClear100,
        selectedItemColor: blueLoyautePrimary,
        unselectedItemColor: grayMood80,
        unselectedLabelStyle: TextStyle(
          color: grayMood80,
          fontSize: 10,
        ),
        selectedLabelStyle: TextStyle(
          color: blueLoyautePrimary,
          fontSize: 10,
        ),
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}
