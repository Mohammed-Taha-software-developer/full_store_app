import 'package:flutter/material.dart';

class Test2 extends StatelessWidget {
  const Test2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,),
      body: Column(
        children: [
          TextButton(onPressed: (){}, child: Text("Click Test 2  Button "))
        ],
      ),
    );
  }
}
