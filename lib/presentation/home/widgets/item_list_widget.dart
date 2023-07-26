import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:nike_app/infrastructure/theme/color_style.dart';
import 'package:nike_app/infrastructure/theme/text_style.dart';

class ItemListWidget extends StatelessWidget {
  const ItemListWidget({
    super.key,
    required this.iconPath,
    required this.title,
    this.destinationRoute,
  });
  final String iconPath;
  final String title;
  final VoidCallback? destinationRoute;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: destinationRoute,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SvgPicture.asset(
              iconPath,
              color: AppColorStyle.whiteColor,
            ),
            const SizedBox(
              width: 30,
            ),
            Text(
              title,
              style: const AppTextStyle()
                  .bodyLabelTitle
                  .copyWith(color: AppColorStyle.whiteColor),
            ),
          ],
        ),
      ),
    );
  }
}
