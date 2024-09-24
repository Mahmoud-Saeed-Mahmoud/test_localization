import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_localization/generated/locale_keys.g.dart';
import 'package:test_localization/src/core/extension/navigation_extension.dart';

import '../../../../core/localization/localization.dart';
import '../../../../core/routes/names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.home_title).tr(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
            TextButton(
              child: const Text('Go to second page'),
              onPressed: () {
                context.navigateToNamed(RoutesName.second);
              },
            ),
            TextButton(
              child: const Text('English'),
              onPressed: () {
                Localization.setLocale(const Locale('en'));
              },
            ),
            TextButton(
              child: const Text('Arabic'),
              onPressed: () {
                Localization.setLocale(const Locale('ar'));
              },
            ),
          ],
        ),
      ),
    );
  }
}
