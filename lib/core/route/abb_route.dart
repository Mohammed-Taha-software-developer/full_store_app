import 'package:flutter/material.dart';
import 'package:full_store_app/core/common/views/under_build_screen.dart';
import 'package:full_store_app/core/route/base_routes.dart';
import 'package:full_store_app/features/auth/presention/view/sign_in.dart';
import 'package:full_store_app/features/auth/presention/view/sign_up.dart';

class AppRoutes {
  static const String signIn = "signIn";
  static const String signUp = "signUp";

  static Route<void> onGenerateRoute(RouteSettings setting) {
    final arg = setting.arguments;
    switch (setting.name) {
      case signIn:
        return BaseRoute(page: const SignInView());
      case signUp:
        return BaseRoute(page: const SignUpView());
      default:
        return BaseRoute(page: const PageUnderBuildScreen());
    }
  }
}
