import 'package:flutter/material.dart';

extension NavigationExtension on BuildContext {
  /// Pops the current route off the navigation stack.
  void goBack([Object? result]) {
    Navigator.pop(this, result);
  }

  /// Replaces all the routes in the navigation stack with a new route.
  void navigateAndRemoveUntil(Widget page, RoutePredicate predicate) {
    Navigator.pushAndRemoveUntil(
      this,
      MaterialPageRoute(builder: (_) => page),
      predicate,
    );
  }

  /// Replaces all the routes in the navigation stack with a named route.
  void navigateAndRemoveUntilNamed(String routeName, RoutePredicate predicate,
      {Object? arguments}) {
    Navigator.pushNamedAndRemoveUntil(this, routeName, predicate,
        arguments: arguments);
  }

  /// Pushes a new route to the navigation stack and replaces the current one (pushReplacement).
  void navigateReplacement(Widget page) {
    Navigator.pushReplacement(
      this,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  /// Pushes a named route and replaces the current route (pushReplacementNamed).
  void navigateReplacementNamed(String routeName, {Object? arguments}) {
    Navigator.pushReplacementNamed(this, routeName, arguments: arguments);
  }

  /// Pushes a new route to the navigation stack (normal push).
  void navigateTo(Widget page) {
    Navigator.push(
      this,
      MaterialPageRoute(builder: (_) => page),
    );
  }

  /// Pushes a named route to the navigation stack.
  void navigateToNamed(String routeName, {Object? arguments}) {
    Navigator.pushNamed(this, routeName, arguments: arguments);
  }

  /// Pops the current route and pushes a new route (pop and push).
  void popAndNavigateTo(Widget page) {
    Navigator.popAndPushNamed(
      this,
      MaterialPageRoute(builder: (_) => page).settings.name ?? '',
    );
  }

  /// Pops all the routes until reaching the first route (popping back to the home screen or the root).
  void popToFirst() {
    Navigator.popUntil(this, (route) => route.isFirst);
  }
}
