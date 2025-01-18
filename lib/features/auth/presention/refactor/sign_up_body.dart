import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/common/animation/animate_do.dart';
import 'package:full_store_app/core/common/widget/text_app.dart';
import 'package:full_store_app/core/extension/extension.dart';
import 'package:full_store_app/core/language/lang_keys.dart';
import 'package:full_store_app/core/route/abb_route.dart';
import 'package:full_store_app/features/auth/presention/widget/auth_title_widget.dart';
import 'package:full_store_app/features/auth/presention/widget/mode_and_lang_widget.dart';
import 'package:full_store_app/features/auth/presention/widget/sign_up/sign_up_button_widget.dart';
import 'package:full_store_app/features/auth/presention/widget/sign_up/sign_up_text_field.dart';
import 'package:full_store_app/features/auth/presention/widget/sign_up/user_avatat_widget.dart';


class SignUpBody extends StatelessWidget {
  const SignUpBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(horizontal: 20.w,vertical: 20.h),
      child: SingleChildScrollView(
        child: Column(
          children: [
            const ModeAndLangWidget(),
            SizedBox(
              height: 20.h,
            ),
            AuthTitleWidget(
                title: context.translate(LangKeys.signUp),
                description: context.translate(LangKeys.signUpWelcome)),
            SizedBox(
              height: 10.h,
            ),
            const UserAvatartWidget(),
            SizedBox(
              height: 20.h,
            ),
            const SignUpTextFieldWidget(),
            SizedBox(
              height: 20.h,
            ),
            const SignUpButtonWidget(),

            CustomFadeInDown(
              duration: 650,
              child: TextButton(
                onPressed: () {
                  context.pushNamed(AppRoutes.signIn);
                },
                child: TextApp(
                  text: context.translate(LangKeys.youHaveAccount),
                  theme: context.textStyle.copyWith(
                      fontSize: 18.sp, color: context.color.bluePinkLight),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
