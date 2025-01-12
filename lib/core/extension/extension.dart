import 'package:flutter/material.dart';
import 'package:full_store_app/core/styles/theme/theme_color_extension.dart';
import 'package:full_store_app/core/styles/theme/theme_image.dart';

extension ContextExtension on BuildContext {
  ThemeColor get color => Theme.of(this).extension<ThemeColor>()!;
  ThemeImage get image => Theme.of(this).extension<ThemeImage>()!;

  Future<dynamic> pushNamed(String pushNamed, {Object? arg}) {
    return Navigator.of(this).pushNamed(pushNamed, arguments: arg);
  }

  Future<dynamic> pushReplacementNamed(String pushNamed, {Object? arg}) {
    return Navigator.of(this).pushReplacementNamed(pushNamed, arguments: arg);
  }

  void pop() => Navigator.pop(this);
}
