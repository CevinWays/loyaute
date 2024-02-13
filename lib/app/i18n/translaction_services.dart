

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loyaute/app/i18n/locales/en.dart';
import 'package:loyaute/app/i18n/locales/id.dart';

class TranslationService extends Translations {
  static final locale = Get.deviceLocale;
  static const fallbackLocale = Locale('en');

  static const Locale localizationEn = Locale('en');
  static const Locale localizationId = Locale('id');
  
  @override
  Map<String, Map<String, String>> get keys => {
    localizationEn.languageCode: en,
    localizationId.languageCode: id,
  };
  
}