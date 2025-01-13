import 'package:flutter/material.dart';
import 'package:full_store_app/core/extension/extension.dart';
import 'package:full_store_app/core/language/lang_keys.dart';

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: [
          TextButton(
              onPressed: () {},
              child: Text(context.translate(LangKeys.appName)))
        ],
      ),
    );
  }
}
