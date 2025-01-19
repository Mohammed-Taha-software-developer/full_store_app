import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:full_store_app/core/app/bloc_observer.dart';
import 'package:full_store_app/core/app/connentivity.dart';
import 'package:full_store_app/core/di/injection_container.dart';
import 'package:full_store_app/core/service/shared_perf/shared_pref.dart';
import 'package:full_store_app/run_app.dart';
import 'core/env/env_variables.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  ///Injection
  await setupInjector();

  ///ScreenUtil
  await ScreenUtil.ensureScreenSize();
  await SharedPref.instance.init();

  ///EnvVariables
  await EnvVariables.instance.init(envType: EnvTypeEnum.prod);
  await ConnectivityController.instance.init();

  ///Firebase
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  ///Bloc observer
  Bloc.observer = AppBlocObserver();

  ///Cancel screen rotation
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]).then((_) {
    runApp(
      const MyApp(),
    );
  });
}
