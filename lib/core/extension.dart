import 'package:flutter/material.dart';

extension ContextExtension on BuildContext {
  Future<dynamic> pushNamed(String pushNamed, {Object? arg}) {
    return Navigator.of(this).pushNamed(pushNamed, arguments: arg);
  }

  Future<dynamic> pushReplacementNamed(String pushNamed, {Object? arg}) {
    return Navigator.of(this).pushReplacementNamed(pushNamed, arguments: arg);
  }

  void pop() => Navigator.pop(this);
}
