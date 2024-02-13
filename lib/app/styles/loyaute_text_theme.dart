import 'package:flutter/material.dart';
import 'package:loyaute/app/styles/colors.dart';

class LoyauteTextTheme extends TextTheme {
  static const defaultFontLoyaute = 'PlusJakartaSans';

  @override
  TextStyle? get overline => const TextStyle(
        color: blackLoyaute,
        fontSize: 10,
        letterSpacing: 0.1,
        fontWeight: FontWeight.w400,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get caption => const TextStyle(
        color: blackLoyaute,
        fontSize: 12,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get button => const TextStyle(
        color: whiteClear100,
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.w700,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get bodyText2 => const TextStyle(
        color: blackLoyaute,
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.w400,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get bodyText1 => const TextStyle(
        color: blackLoyaute,
        fontSize: 15,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get subtitle2 => const TextStyle(
        color: blackLoyaute,
        fontSize: 14,
        letterSpacing: 0,
        fontWeight: FontWeight.w700,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get subtitle1 => const TextStyle(
        color: blackLoyaute,
        fontSize: 16,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get headline6 => const TextStyle(
        color: blackLoyaute,
        fontSize: 18,
        letterSpacing: 0,
        fontWeight: FontWeight.w700,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get headline5 => const TextStyle(
        color: blackLoyaute,
        fontSize: 20,
        letterSpacing: -0.25,
        fontWeight: FontWeight.w600,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get headline4 => const TextStyle(
        color: blackLoyaute,
        fontSize: 24,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get headline3 => const TextStyle(
        color: blackLoyaute,
        fontSize: 28,
        letterSpacing: 0,
        fontWeight: FontWeight.w600,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get headline2 => const TextStyle(
        color: blackLoyaute,
        fontSize: 32,
        letterSpacing: -0.5,
        fontWeight: FontWeight.w600,
        fontFamily: defaultFontLoyaute,
      );

  @override
  TextStyle? get headline1 => const TextStyle(
        color: blackLoyaute,
        fontSize: 40,
        letterSpacing: -1.5,
        fontWeight: FontWeight.w600,
        fontFamily: defaultFontLoyaute,
      );
}
