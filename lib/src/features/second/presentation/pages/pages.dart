import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:test_localization/generated/locale_keys.g.dart';

import '../../../../core/localization/localization.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(LocaleKeys.second_page_title).tr(),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
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
