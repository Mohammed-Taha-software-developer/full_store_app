import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/common/animation/animate_do.dart';
import 'package:full_store_app/core/common/widget/custom_linear_button.dart';
import 'package:full_store_app/core/common/widget/text_app.dart';
import 'package:full_store_app/core/extension/extension.dart';
import 'package:full_store_app/core/language/lang_keys.dart';

class SignUpButtonWidget extends StatelessWidget {
  const SignUpButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomFadeInRight(
      duration: 600,
      child: CustomLinearButton(
          height: 50.h,
          width: MediaQuery.sizeOf(context).width,
          onPressed: () {},
          child: TextApp(
            text: context.translate(LangKeys.login),
            theme: context.textStyle.copyWith(
              fontSize: 20.sp,
            ),
          )),
    );
  }
}
