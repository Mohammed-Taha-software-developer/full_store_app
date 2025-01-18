import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/common/widget/custom_text_field.dart';
import 'package:full_store_app/core/extension/extension.dart';
import 'package:full_store_app/core/language/lang_keys.dart';
import 'package:full_store_app/core/utile/app_regex.dart';

class SignUpTextFieldWidget extends StatefulWidget {
  const SignUpTextFieldWidget({super.key});

  @override
  State<SignUpTextFieldWidget> createState() => _SignUpTextFieldWidgetState();
}

class _SignUpTextFieldWidgetState extends State<SignUpTextFieldWidget> {
  bool isShowPassword = true;

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Column(
        children: [
          CustomTextField(
            controller: TextEditingController(),
            hintText: context.translate(LangKeys.fullName),
            keyboardType: TextInputType.name,
            validator: (value) {
              if (value == null || value.length <= 6 || value.isEmpty) {
                return context.translate(LangKeys.validName);
              }
              return null;
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: context.translate(LangKeys.email),
            keyboardType: TextInputType.emailAddress,
            validator: (value) {
              if (!AppRegex.isEmailValid("")) {
                return context.translate(LangKeys.validEmail);
              }
              return null;
            },
          ),
          SizedBox(
            height: 20.h,
          ),
          CustomTextField(
            controller: TextEditingController(),
            hintText: context.translate(LangKeys.password),
            keyboardType: TextInputType.visiblePassword,
            validator: (value) {
              if (value == null || value.length <= 6 || value.isEmpty) {
                return context.translate(LangKeys.validPasswrod);
              }
              return null;
            },
            obscureText: isShowPassword,
            suffixIcon: IconButton(
                onPressed: () {
                  setState(() {
                    isShowPassword = !isShowPassword;
                  });
                },
                icon: Icon(
                  isShowPassword ? Icons.visibility_off : Icons.visibility,
                  color: context.color.textColor,
                )),
          ),
        ],
      ),
    );
  }
}
