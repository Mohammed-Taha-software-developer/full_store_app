import 'package:flutter/material.dart';
import 'package:full_store_app/core/styles/colors/colors_dark.dart';
import 'package:full_store_app/core/styles/colors/colors_light.dart';

class ThemeColor extends ThemeExtension<ThemeColor> {
  final Color? mainColor;

  const ThemeColor({required this.mainColor});

  @override
  ThemeExtension<ThemeColor> copyWith({
    Color? mainColo,
  }) {
    return ThemeColor(
      mainColor: mainColor,
    );
  }

  @override
  ThemeExtension<ThemeColor> lerp(
    covariant ThemeExtension<ThemeColor>? other,
    double t,
  ) {
    if (other is! ThemeColor) {
      return this;
    }
    return ThemeColor(mainColor: mainColor);
  }

  static const ThemeColor dark = ThemeColor(mainColor: ColorsDark.mainColor);
  static const ThemeColor light = ThemeColor(mainColor: ColorsLight.mainColor);
}
