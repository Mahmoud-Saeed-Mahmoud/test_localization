library text_style;

import 'package:flutter/material.dart';

//
class AppTextStyle extends TextStyle {
  static TextStyle get header => const TextStyle();
}

//
mixin Font implements FontWeight {
  static FontWeight get bold => FontWeight.w700;

  static FontWeight get light => FontWeight.w300;

  static FontWeight get medium => FontWeight.w500;

  static FontWeight get normal => FontWeight.w400;
}
