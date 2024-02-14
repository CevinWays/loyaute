import 'package:flutter/material.dart';

class LoyauteTextStyle extends  TextStyle{
  static const defaultFontLoyaute = 'PlusJakartaSans';

  static TextStyle? overline({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.labelSmall?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? caption({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.bodySmall?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? button({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.labelLarge?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? bodyText2({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.bodyMedium?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? bodyText1({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.bodyLarge?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? subtitle2({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.titleSmall?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? subtitle1({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.titleMedium?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? headline6({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.titleLarge?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? headline5({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.headlineSmall?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? headline4({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.headlineMedium?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? headline3({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.displaySmall?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? headline2({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.displayMedium?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }

  static TextStyle? headline1({
    required BuildContext context,
    Color? color,
    TextDecoration? decoration,
    FontWeight? fontWeight,
  }) {
    return Theme.of(context).textTheme.displayLarge?.copyWith(
          color: color,
          decoration: decoration,
          fontWeight: fontWeight,
          fontFamily: defaultFontLoyaute,
        );
  }
}