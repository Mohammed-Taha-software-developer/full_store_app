import 'package:flutter/material.dart';
import 'package:full_store_app/core/language/app_localizations.dart';
import 'package:full_store_app/core/styles/theme/assets_extension.dart';
import 'package:full_store_app/core/styles/theme/color_extension.dart';

extension ContextExtension on BuildContext {
  ///theme
  MyColors get color => Theme.of(this).extension<MyColors>()!;

  MyAssets get image => Theme.of(this).extension<MyAssets>()!;

  ///Localizations
  String translate(String translate) {
    return AppLocalizations.of(this)!.translate(translate).toString() ;
  }
  ///route
  Future<dynamic> pushNamed(String pushNamed, {Object? arg}) {
    return Navigator.of(this).pushNamed(pushNamed, arguments: arg);
  }

  Future<dynamic> pushReplacementNamed(String pushNamed, {Object? arg}) {
    return Navigator.of(this).pushReplacementNamed(pushNamed, arguments: arg);
  }

  void pop() => Navigator.pop(this);
}
