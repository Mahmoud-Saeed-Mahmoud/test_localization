import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'generated/code_gen_loader.g.dart';
import 'src/core/config/config.dart';
import 'src/core/routes/routes.dart';

class RootApp extends StatelessWidget {
  const RootApp({super.key});

  @override
  Widget build(BuildContext context) {
    return EasyLocalization(
      assetLoader: const CodeGenLoader(),
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      supportedLocales: CodeGenLoader.mapLocales
          .map((key, value) => MapEntry(key, Locale(key)))
          .values
          .toList(),
      child: ScreenUtilInit(
        designSize: const Size(360, 690),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => DismissKeyboard(
          child: GetMaterialApp(
            locale: context.locale, // Get the locale from EasyLocalization
            supportedLocales: context.supportedLocales,
            localizationsDelegates: context.localizationDelegates,
            debugShowCheckedModeBanner: false,
            initialRoute: RoutesName.initial,
            onGenerateRoute: AppRoute.generate,
          ),
        ),
      ),
    );
  }
}
