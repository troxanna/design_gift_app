import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gift_app/theme/data/colors/app_color_scheme.dart';
import 'package:gift_app/theme/data/typography/app_typography.dart';
import 'package:gift_app/theme/data/gradients/app_gradients.dart';
import 'package:gift_app/theme/data/spacing/app_spacing.dart';
import 'package:gift_app/theme/data/border_radius/app_border_radius.dart';
import 'package:gift_app/theme/data/icons/app_icons.dart';
import 'package:gift_app/theme/data/shadows/app_shadows.dart';
import 'package:gift_app/theme/data/material_theme/material_theme.dart';

export 'colors/app_color_scheme.dart';
export 'icons/app_icons.dart';
export 'shadows/app_shadows.dart';
export 'spacing/app_spacing.dart';
export 'typography/app_typography.dart';

class AppThemeData extends Equatable {
  const AppThemeData({
    required this.colorScheme,
    required this.typography,
    required this.gradient,
    required this.spacing,
    required this.shadows,
    required this.icons,
    required this.radius,
    required this.materialTheme,
  });

  factory AppThemeData.light() => AppThemeData(
        colorScheme: AppColorScheme.light(),
        typography: AppTypography.regular(),
        gradient: AppGradient.light(),
        spacing: AppSpacing.regular(),
        shadows: const AppShadows(),
        icons: AppIcons.regular(),
        radius: AppBorderRadius.regular(),
        materialTheme: MaterialTheme.lightTheme,
      );

  factory AppThemeData.dark() => AppThemeData(
        colorScheme: AppColorScheme.light(),
        typography: AppTypography.regular(),
        gradient: AppGradient.light(),
        spacing: AppSpacing.regular(),
        shadows: const AppShadows(),
        icons: AppIcons.regular(),
        radius: AppBorderRadius.regular(),
        materialTheme: MaterialTheme.darkTheme,
      );

  final AppColorScheme colorScheme;
  final AppTypography typography;
  final AppGradient gradient;
  final AppSpacing spacing;
  final AppShadows shadows;
  final AppIcons icons;
  final AppBorderRadius radius;
  final ThemeData materialTheme;

  @override
  List<Object?> get props => [
        colorScheme,
        typography,
        gradient,
        spacing,
        shadows,
        icons,
        radius,
      ];
}
