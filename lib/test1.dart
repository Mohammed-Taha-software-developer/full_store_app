import 'package:flutter/material.dart';
import 'package:full_store_app/core/extension/extension.dart';
import 'package:full_store_app/core/route/abb_route.dart';

class Test1 extends StatelessWidget {
  const Test1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextButton(
            onPressed: () {
              context.pushNamed(AppRoutes.test2);
            },
            child: Text("Click Test Button "),
          )
        ],
      ),
    );
  }
}
