import 'package:flutter/material.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';

class ProductPicWidget extends StatelessWidget {
  const ProductPicWidget({
    super.key,
    required this.imagePath,
  });

  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: AppColorStyle.whiteColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Image.asset(
        imagePath,
      ),
    );
  }
}
