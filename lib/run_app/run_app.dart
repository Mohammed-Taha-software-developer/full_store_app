import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/app/connentivity.dart';
import 'package:full_store_app/core/common/views/no_network_view.dart';
import 'package:full_store_app/core/env/env_variables.dart';

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
              debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
              home: Scaffold(
                appBar: AppBar(
                  title: const Text("Home Page"),
                ),
                body: Center(
                  child: const Text("You are connected to the internet",),
                ),
              ),
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
