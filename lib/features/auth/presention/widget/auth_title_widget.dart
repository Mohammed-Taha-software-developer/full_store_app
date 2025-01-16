import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/common/animation/animate_do.dart';
import 'package:full_store_app/core/common/widget/text_app.dart';
import 'package:full_store_app/core/extension/extension.dart';

class AuthTitleWidget extends StatelessWidget {
  const AuthTitleWidget(
      {super.key, required this.title, required this.description});

  final String title;

  final String description;

  @override
  Widget build(BuildContext context) {
    return CustomFadeInDown(
      duration: 400,
      child: Column(
        children: [
          TextApp(
            text: title,
            theme: context.textStyle.copyWith(
              fontSize: 24.sp,
              color: context.color.textColor,
              fontWeight: FontWeight.bold
            ),
          ),
          SizedBox(
            height: 10.h,
          ),
          TextApp(
            text: description,
            theme: context.textStyle.copyWith(
              fontSize: 18.sp,
              color: context.color.textColor,

            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
