import 'package:flutter/material.dart';
import 'package:full_store_app/core/styles/colors/colors_dark.dart';
import 'package:full_store_app/core/styles/colors/colors_light.dart';
import 'package:full_store_app/core/styles/theme/theme_color_extension.dart';



ThemeData darkTheme()
{
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
      extensions: <ThemeExtension<dynamic>>[ThemeColor.dark],
      useMaterial3: true
  );
}
ThemeData lightTheme()
{
  return ThemeData(
      scaffoldBackgroundColor: ColorsLight.mainColor,
      extensions: <ThemeExtension<dynamic>>[ThemeColor.light],

      useMaterial3: true
  );
}