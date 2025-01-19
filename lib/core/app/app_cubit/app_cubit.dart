import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:full_store_app/core/service/shared_perf/shared_keys.dart';
import 'package:full_store_app/core/service/shared_perf/shared_pref.dart';

part 'app_state.dart';

part 'app_cubit.freezed.dart';

class AppCubit extends Cubit<AppState> {
  AppCubit() : super(const AppState.initial());

  ///Theme
  bool isDark = true;

  Future<void> changeThemeMode({bool? sharedPref}) async {
    if (sharedPref != null) {
      isDark = sharedPref;
      emit(AppState.themeAppChange(isDark: isDark));
    } else {
      isDark = !isDark;
      await SharedPref.instance
          .setBoolean(PrefKeys.themeMode, isDark)
          .then((value) {
        emit(AppState.themeAppChange(isDark: isDark));
      });
    }
  }

  ///Language
  String currentLanguage = "en";
  Future<void> getSavedLanguage() async {
    final result = SharedPref.instance.contains(PrefKeys.language)
        ? SharedPref.instance.getString(PrefKeys.language)
        : "en";
    currentLanguage = result!;
    emit(AppState.langAppChange(local: Locale(currentLanguage)));
  }
  Future<void> _changeLanguage(String langCode) async
  {
    await SharedPref.instance.setString(PrefKeys.language,currentLanguage) ;
    currentLanguage = langCode ;
    emit(AppState.langAppChange(local: Locale(currentLanguage)));
  }
  void toArabic() => _changeLanguage("ar");
  void toEnglish() => _changeLanguage("en");
}

