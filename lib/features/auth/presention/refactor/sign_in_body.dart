import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/common/widget/text_app.dart';
import 'package:full_store_app/core/extension/extension.dart';
import 'package:full_store_app/core/language/lang_keys.dart';
import 'package:full_store_app/features/auth/presention/widget/auth_title_widget.dart';
import 'package:full_store_app/features/auth/presention/widget/login/login_button_widget.dart';
import 'package:full_store_app/features/auth/presention/widget/login/login_text_field.dart';
import 'package:full_store_app/features/auth/presention/widget/mode_and_lang_widget.dart';

class SignInBody extends StatelessWidget {
  const SignInBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ModeAndLangWidget(),
            SizedBox(
              height: 50.h,
            ),
            AuthTitleWidget(
                title: context.translate(LangKeys.login),
                description: context.translate(LangKeys.welcome)),
            SizedBox(
              height: 30.h,
            ),
            const LoginTextField(),
            SizedBox(
              height: 30.h,
            ),
            const LoginButtonWidget(),
            SizedBox(
              height: 30.h,
            ),
            TextApp(
              text: context.translate(LangKeys.createAccount),
              theme: context.textStyle.copyWith(
                fontSize:18.sp,
                color: context.color.bluePinkLight
              ),
            )
          ],
        ),
      ),
    );
  }
}
