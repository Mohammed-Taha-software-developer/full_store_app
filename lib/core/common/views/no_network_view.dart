import 'package:flutter/material.dart';
import 'package:full_store_app/core/styles/image/app_images.dart';

class NoNetworkView extends StatelessWidget {
  const NoNetworkView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        constraints: BoxConstraints.expand(),
        decoration: BoxDecoration(
            image: DecorationImage(
          image: AssetImage(AppImages.noNetwork),
          fit: BoxFit.fill,
        )),
      ),
    );
  }
}
