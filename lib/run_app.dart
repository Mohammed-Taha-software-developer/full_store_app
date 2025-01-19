import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/app/app_cubit/app_cubit.dart';
import 'package:full_store_app/core/app/connentivity.dart';
import 'package:full_store_app/core/common/views/no_network_view.dart';
import 'package:full_store_app/core/di/injection_container.dart';
import 'package:full_store_app/core/env/env_variables.dart';
import 'package:full_store_app/core/language/app_localizations_setup.dart';
import 'package:full_store_app/core/route/abb_route.dart';
import 'package:full_store_app/core/service/shared_perf/shared_keys.dart';
import 'package:full_store_app/core/service/shared_perf/shared_pref.dart';
import 'package:full_store_app/core/styles/theme/app_theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder<bool>(
      valueListenable: ConnectivityController.instance.isConnected,
      builder: (_, isConnected, __) {
        if (isConnected) {
          return BlocProvider(
            create: (context) => sl<AppCubit>()
              ..changeThemeMode(
                sharedPref:
                    SharedPref.instance.getBoolean(PrefKeys.themeMode) ?? false,
              )
              ..getSavedLanguage(),
            child: ScreenUtilInit(
              designSize: const Size(390, 845),
              minTextAdapt: true,
              splitScreenMode: true,
              builder: (_, child) => BlocBuilder<AppCubit, AppState>(
                builder: (context, state) {
                  final cubit = context.read<AppCubit>();
                  return MaterialApp(
                    locale: Locale(cubit.currentLanguage),
                    supportedLocales: AppLocalizationsSetup.supportedLocales,
                    localizationsDelegates:
                        AppLocalizationsSetup.localizationsDelegates,
                    localeResolutionCallback:
                        AppLocalizationsSetup.localeResolutionCallback,
                    theme: cubit.isDark ? lightTheme() : darkTheme(),
                    debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
                    onGenerateRoute: AppRoutes.onGenerateRoute,
                    initialRoute: AppRoutes.signIn,
                  );
                },
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
