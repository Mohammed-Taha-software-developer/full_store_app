import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class FamilyName {
  static const String arabicFamily = "Arabic";
  static const String englishFamily = "English";
}

class AppFontStyle {
  static  TextStyle font20Arabic = TextStyle(
    fontSize: 20.sp,
    color: Colors.white,
    fontFamily: FamilyName.englishFamily ,
  );
  static  TextStyle font15Arabic = TextStyle(
    fontSize: 15.sp,
    color: Colors.white,
    fontFamily: FamilyName.englishFamily ,
  );
  static  TextStyle font26Arabic = TextStyle(
    fontSize: 26.sp,
    color: Colors.white,
    fontFamily: FamilyName.englishFamily ,
  );
}
