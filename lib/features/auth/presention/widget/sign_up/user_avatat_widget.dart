import 'package:flutter/material.dart';
import 'package:full_store_app/core/common/animation/animate_do.dart';
import 'package:full_store_app/core/styles/image/app_images.dart';

class UserAvatartWidget extends StatelessWidget {
  const UserAvatartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return  const CustomFadeInUp(
      duration: 400,
      child: CircleAvatar(
        radius: 38,
        backgroundImage: AssetImage(AppImages.bigIconNavBarLight),
      ),
    );
  }
}
