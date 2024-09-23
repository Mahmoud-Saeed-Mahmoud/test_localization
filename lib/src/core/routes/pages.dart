library route_pages;

import 'package:flutter/material.dart';
import 'package:test_localization/src/core/error/route_exception.dart';
import 'package:test_localization/src/features/second/presentation/pages/pages.dart';

import '../../features/home/presentation/pages/pages.dart';
import 'page_fade_transition.dart';
import 'routes.dart';

class AppRoute {
  static const initial = RoutesName.initial;

  static Route<dynamic> generate(RouteSettings? settings) {
    switch (settings?.name) {
      case RoutesName.initial:
        return PageFadeTransition(child: const HomePage());

      case RoutesName.home:
        return PageFadeTransition(child: const HomePage());

      case RoutesName.second:
        return PageFadeTransition(child: const SecondPage());
      default:
        // If there is no such named route in the switch statement
        throw const RouteException('Route not found!');
    }
  }
}
