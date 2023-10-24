import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gift_app/theme/theme.dart';

class ReasonGiftItem extends StatelessWidget {
  const ReasonGiftItem({required this.icon, required this.title, super.key});

  final String icon;
  final String title;

  @override
  Widget build(BuildContext context) {
    final appThemeData = AppTheme.of(context);
    final colorScheme = appThemeData.colorScheme;
    final typography = AppTheme.of(context)
        .typography
        .withColor(colorScheme.textColor.primary);

    return Column(children: [
      SvgPicture.asset(
        icon,
      ),
      const SizedBox(
        height: 5,
      ),
      Text(
        title,
        style: typography.body10Medium,
        textAlign: TextAlign.center,
      ),
    ]);
  }
}
