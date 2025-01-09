import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/app/connentivity.dart';
import 'package:full_store_app/core/common/views/no_network_view.dart';
import 'package:full_store_app/core/env/env_variables.dart';
import 'package:full_store_app/core/route/abb_route.dart';
import 'package:full_store_app/core/styles/theme/app_theme.dart';
import 'package:full_store_app/test1.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, isConnected, __) {
        if (isConnected) {
          return ScreenUtilInit(
            designSize: const Size(390, 845),
            minTextAdapt: true,
            splitScreenMode: true,
            child: MaterialApp(
              theme: lightTheme(),
              debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
              onGenerateRoute: AppRoutes.onGenerateRoute,
              initialRoute: AppRoutes.test1,
            ),
          );
        } else {
          return MaterialApp(
            title: "No Network",
            debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
            home: const NoNetworkView(),
          );
        }
      },
    );
  }
}
