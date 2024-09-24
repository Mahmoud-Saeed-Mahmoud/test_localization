library localization;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Localization {
  static setLocale(Locale locale) {
    Get.updateLocale(locale);
    Get.context!.setLocale(locale);
  }
}
