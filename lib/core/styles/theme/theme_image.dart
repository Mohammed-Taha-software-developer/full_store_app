import 'package:flutter/material.dart';
import 'package:full_store_app/core/styles/image/app_images.dart';

class ThemeImage extends ThemeExtension<ThemeImage> {
  final String? mainImage;

  const ThemeImage({required this.mainImage});

  @override
  ThemeExtension<ThemeImage> copyWith({
    String? mainImage,
  }) {
    return ThemeImage(
      mainImage: mainImage,
    );
  }

  @override
  ThemeExtension<ThemeImage> lerp(
      covariant ThemeExtension<ThemeImage>? other,
      double t,
      ) {
    if (other is! ThemeImage) {
      return this;
    }
    return ThemeImage(mainImage: mainImage);
  }

  static const  ThemeImage dark = ThemeImage(mainImage: AppImages.testDark);
  static const ThemeImage light = ThemeImage(mainImage: AppImages.testLight);
}
