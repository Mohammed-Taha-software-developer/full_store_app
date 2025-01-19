import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/app/app_cubit/app_cubit.dart';

import 'package:full_store_app/core/common/animation/animate_do.dart';
import 'package:full_store_app/core/common/widget/custom_linear_button.dart';
import 'package:full_store_app/core/common/widget/text_app.dart';
import 'package:full_store_app/core/extension/extension.dart';
import 'package:full_store_app/core/language/app_localizations.dart';
import 'package:full_store_app/core/language/lang_keys.dart';

class ModeAndLangWidget extends StatelessWidget {
  const ModeAndLangWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<AppCubit>();
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomFadeInRight(
              duration: 400,
              child: CustomLinearButton(
                onPressed: () {
                  cubit.changeThemeMode();
                },
                child: Icon(
                  cubit.isDark ?
                  Icons.light_mode_rounded : Icons.dark_mode_rounded,
                  color: Colors.white,
                ),
              ),
            );
          },
        ),
        BlocBuilder(
          bloc: cubit,
          builder: (context, state) {
            return CustomFadeInLeft(
              duration: 400,
              child: CustomLinearButton(
                height: 45.h,
                width: 100.w,
                onPressed: () {
                  if (AppLocalizations.of(context)!.isEnLocale) {
                    cubit.toArabic();
                  } else {
                    cubit.toEnglish();
                  }
                },
                child: TextApp(
                  text: context.translate(
                    LangKeys.language,
                  ),
                  theme: context.textStyle.copyWith(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            );
          },
        ),
      ],
    );
  }
}
