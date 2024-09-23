import 'package:flutter/material.dart';
import 'package:test_localization/src/core/extension/navigation_extension.dart';

import '../../../../core/routes/names.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Page'),
        centerTitle: true,
      ),
      body: Center(
        child: TextButton(
          child: const Text('Go to second page'),
          onPressed: () {
            context.navigateToNamed(RoutesName.second);
          },
        ),
      ),
    );
  }
}
