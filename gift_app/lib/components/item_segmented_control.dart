import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gift_app/src/gradient_text.dart';
import 'package:gift_app/theme/theme.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class SegmentedItem extends StatelessWidget {
  const SegmentedItem({required this.icon, this.title, super.key});

  final String icon;
  final String? title;

  @override
  Widget build(BuildContext context) {
    final appThemeData = AppTheme.of(context);
    final colorScheme = appThemeData.colorScheme;
    final typography = AppTheme.of(context)
        .typography
        .withColor(colorScheme.textColor.primary);

    return Container(
      width: title == null ? 50 : null,
      padding: title != null
          ? const EdgeInsets.only(left: 15, right: 25)
          : const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 14,
            ),
      decoration: BoxDecoration(
        border: GradientBoxBorder(
          gradient: title != null
              ? appThemeData.gradient.primary
              : appThemeData.gradient.secondary,
          width: 2,
        ),
        borderRadius: appThemeData.radius.radius25,
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            icon,
          ),
          title != null
              ? const SizedBox(
                  width: 6,
                )
              : const SizedBox.shrink(),
          title != null
              ? GradientText(
                  text: title!,
                  gradient: appThemeData.gradient.primary,
                  style: typography.body15Bold,
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
