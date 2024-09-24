library dependency_injection;

import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

class DependencyInjection {
  static Future<void> init() async {
    WidgetsFlutterBinding.ensureInitialized();
    await EasyLocalization.ensureInitialized();
  }
}
