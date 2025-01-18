import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/extension/extension.dart';
import 'package:full_store_app/features/auth/presention/refactor/sign_up_body.dart';
import 'package:full_store_app/features/auth/presention/widget/auth_custom_painter.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CustomPaint(
        size: Size(
          MediaQuery.sizeOf(context).width,
          150.h,
        ),
        painter: AuthCustomPainter(
            gradient: LinearGradient(
          colors: [
            context.color.bluePinkLight!,
            context.color.bluePinkLight!,
            context.color.bluePinkLight!,
            context.color.bluePinkDark!,
          ],
        )),
      ),
      body: const SafeArea(
        bottom: false,
        child: SignUpBody(),
      ),
    );
  }
}
