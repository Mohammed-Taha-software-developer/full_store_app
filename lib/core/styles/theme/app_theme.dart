import 'package:flutter/material.dart';
import 'package:full_store_app/core/styles/colors/colors_dark%20(1).dart';
import 'package:full_store_app/core/styles/colors/colors_light%20(1).dart';
import 'package:full_store_app/core/styles/theme/assets_extension.dart';
import 'package:full_store_app/core/styles/theme/color_extension.dart';



ThemeData darkTheme()
{
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
      extensions: const <ThemeExtension<dynamic>>[MyColors.dark,MyAssets.dark],
      useMaterial3: true
  );
}
ThemeData lightTheme()
{
  return ThemeData(
      scaffoldBackgroundColor: ColorsLight.mainColor,
      extensions: const <ThemeExtension<dynamic>>[MyColors.light,MyAssets.light],

      useMaterial3: true
  );
}