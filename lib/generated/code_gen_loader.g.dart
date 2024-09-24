// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes, avoid_renaming_method_parameters

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodeGenLoader extends AssetLoader {
  static const Map<String, dynamic> ar = {
    "app_name": "test_localization",
    "hello_world": "مرحبا بالعالم!",
    "language": "إنجليزي",
    "change_language": "تغيير اللغة",
    "change_theme": "تغيير الموضوع",
    "dark": "مظلم",
    "light": "ضوء",
    "system": "نظام",
    "home_title": "بيت",
    "settings_title": "إعدادات",
    "about_title": "عن",
    "about_text": "يتم إنشاء هذا التطبيق مع رفرفة.",
    "go_to_second_page": "انتقل إلى الصفحة الثانية",
    "second_page_title": "الصفحة الثانية"
  };

  static const Map<String, dynamic> en = {
    "app_name": "test_localization",
    "hello_world": "Hello, world!",
    "language": "English",
    "change_language": "Change language",
    "change_theme": "Change theme",
    "dark": "Dark",
    "light": "Light",
    "system": "System",
    "home_title": "Home",
    "settings_title": "Settings",
    "about_title": "About",
    "about_text": "This app is created with Flutter.",
    "go_to_second_page": "Go to second page",
    "second_page_title": "Second page"
  };

  static const Map<String, Map<String, dynamic>> mapLocales = {
    "ar": ar,
    "en": en
  };
  const CodeGenLoader();
  @override
  Future<Map<String, dynamic>?> load(String path, Locale locale) {
    return Future.value(mapLocales[locale.toString()]);
  }
}
