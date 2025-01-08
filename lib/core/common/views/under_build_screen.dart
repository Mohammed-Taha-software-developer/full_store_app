import 'package:flutter/material.dart';
import 'package:full_store_app/core/styles/app_images.dart';

class PageUnderBuildScreen extends StatelessWidget {
  const PageUnderBuildScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        constraints: const BoxConstraints.expand(),
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.under_build),
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
