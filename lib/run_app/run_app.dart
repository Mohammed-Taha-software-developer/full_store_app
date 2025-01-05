import 'package:flutter/material.dart';
import 'package:full_store_app/core/env/env_variables.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: EnvVariables.instance.debugMode,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.red,
        ),
      ),
    );
  }
}
