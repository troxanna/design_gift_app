import 'package:flutter/material.dart';
import 'package:gift_app/theme/theme.dart';
import 'package:gradient_borders/input_borders/gradient_outline_input_border.dart';

class BodyAppBar extends StatelessWidget {
  const BodyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    final appThemeData = AppTheme.of(context);

    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Row(
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                gradient: appThemeData.gradient.primary,
                borderRadius: appThemeData.radius.radius25,
              ),
              child: TextField(
                decoration: InputDecoration(
                  border: GradientOutlineInputBorder(
                    gradient: appThemeData.gradient.primary,
                    width: 2,
                    borderRadius: appThemeData.radius.radius25,
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          const Icon(
            Icons.search,
            color: Colors.black26,
            size: 36,
          )
        ],
      ),
    );
  }
}
