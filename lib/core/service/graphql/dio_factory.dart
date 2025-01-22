// ignore_for_file: lines_longer_than_80_chars

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:full_store_app/core/service/shared_perf/shared_keys.dart';
import 'package:full_store_app/core/service/shared_perf/shared_pref.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

class DioFactory {
  DioFactory._();

  static Dio? dio;

  static Dio getDio() {
    const timeOut = Duration(seconds: 30);
    if (dio == null) {
      dio = Dio();
      dio!
        ..options.connectTimeout = timeOut
        ..options.receiveTimeout = timeOut
        ..options.headers['Authorization'] =
            'Bearer ${SharedPref.instance.getString(PrefKeys.accessToken)}';
      debugPrint(
        "[USER Token] ====> ${SharedPref.instance.getString(PrefKeys.accessToken) ?? 'NULL TOKEN'}",
      );

      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.add(
      PrettyDioLogger(
        request: false,
        compact: false,
      ),
    );
  }
}
