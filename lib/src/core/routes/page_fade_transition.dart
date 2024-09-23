import 'package:flutter/material.dart';

class PageFadeTransition extends PageRouteBuilder {
  final Widget child;

  PageFadeTransition({required this.child})
      : super(
          pageBuilder: (context, animation, secondaryAnimation) => child,
          transitionsBuilder: (context, animation, secondaryAnimation, child) {
            return FadeTransition(
              opacity: animation,
              child: child,
            );
          },
        );
}
