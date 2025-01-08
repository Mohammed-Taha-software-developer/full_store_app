import 'package:flutter/material.dart';
import 'package:full_store_app/core/common/views/under_build_screen.dart';
import 'package:full_store_app/core/route/base_routes.dart';
import 'package:full_store_app/test1.dart';
import 'package:full_store_app/test2.dart';

class AppRoutes {
  static const String test1 = "test1";
  static const String test2 = "test2";

  static Route<void> onGenerateRoute(RouteSettings setting) {
    final arg = setting.arguments;
    switch (setting.name) {
      case test1:
        return BaseRoute(page: Test1());
      case test2:
        return BaseRoute(page: Test2());
      default:
        return BaseRoute(page: PageUnderBuildScreen());
    }
  }
}
