import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/styles/colors/colors_dark.dart';
import 'package:full_store_app/core/styles/colors/colors_light.dart';
import 'package:full_store_app/core/styles/font/font_style.dart';
import 'package:full_store_app/core/styles/theme/assets_extension.dart';
import 'package:full_store_app/core/styles/theme/color_extension.dart';

ThemeData darkTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsDark.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.dark, MyAssets.dark],
    useMaterial3: true,
    textTheme: TextTheme(
        displaySmall: TextStyle(
      fontSize: 14.sp,
      color: ColorsDark.white,
      fontFamily: FamilyNameHelper.getLocalizedFontFamily(),
    )),
  );
}

ThemeData lightTheme() {
  return ThemeData(
    scaffoldBackgroundColor: ColorsLight.mainColor,
    extensions: const <ThemeExtension<dynamic>>[MyColors.light, MyAssets.light],
    useMaterial3: true,
    textTheme: TextTheme(
        displaySmall: TextStyle(
      fontSize: 14.sp,
      color: ColorsLight.black,
      fontFamily: FamilyNameHelper.getLocalizedFontFamily(),
    )),
  );
}
