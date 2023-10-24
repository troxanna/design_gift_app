import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gift_app/gen/assets.gen.dart';
import 'package:gift_app/src/gradient_text.dart';
import 'package:gift_app/theme/theme.dart';
import 'package:gradient_borders/box_borders/gradient_box_border.dart';

class DateButton extends StatefulWidget {
  const DateButton({super.key});

  @override
  State<DateButton> createState() => _DateButtonState();
}

class _DateButtonState extends State<DateButton> {
  @override
  Widget build(BuildContext context) {
    final appThemeData = AppTheme.of(context);
    final colorScheme = appThemeData.colorScheme;
    final typography = AppTheme.of(context)
        .typography
        .withColor(colorScheme.textColor.primary);
        
    return Container(
      height: 50,
      decoration: BoxDecoration(
          border: GradientBoxBorder(
            gradient: appThemeData.gradient.secondary,
            width: 2,
          ),
          borderRadius: appThemeData.radius.radius25),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            Assets.images.icons.dateIcon,
          ),
          const SizedBox(
            width: 16,
          ),
          GradientText(
            text: "28 марта",
            gradient: appThemeData.gradient.primary,
            style: typography.body20Bold,
          ),
        ],
      ),
    );
  }
}
