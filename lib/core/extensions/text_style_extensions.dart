import 'package:flutter/material.dart';
import 'package:pockaw/core/constants/app_font_weights.dart';

extension TextStyleExtensions on TextStyle {
  TextStyle get semibold => copyWith(
        fontVariations: [AppFontWeights.semiBold],
      );

  TextStyle get bold => copyWith(
        fontVariations: [AppFontWeights.bold],
      );
}
