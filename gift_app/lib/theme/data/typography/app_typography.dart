import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:gift_app/theme/data/typography/app_text_styles.dart';

class AppTypography extends Equatable {
  const AppTypography({
    required this.headline1ExtraBold,
    required this.body20Bold,
    required this.body15Bold,
    required this.body10Bold,
    required this.body20ExtraBold,
    required this.body15Semibold,
    required this.body13Medium,
    required this.body15Medium,
  });

  factory AppTypography.regular() => const AppTypography(
        headline1ExtraBold: AppTextStyles.headline1ExtraBold,
        body20Bold: AppTextStyles.body20Bold,
        body15Bold: AppTextStyles.body15Bold,
        body10Bold: AppTextStyles.body10Bold,
        body20ExtraBold: AppTextStyles.body20ExtraBold,
        body15Semibold: AppTextStyles.body15Semibold,
        body13Medium: AppTextStyles.body13Medium,
        body15Medium: AppTextStyles.body15Medium,
      );

  final TextStyle headline1ExtraBold;
  final TextStyle body20Bold;
  final TextStyle body15Bold;
  final TextStyle body10Bold;
  final TextStyle body20ExtraBold;
  final TextStyle body15Semibold;
  final TextStyle body13Medium;
  final TextStyle body15Medium;

  @override
  List<Object?> get props => [
        headline1ExtraBold,
        body20Bold,
        body15Bold,
        body10Bold,
        body20ExtraBold,
        body15Semibold,
        body13Medium,
        body15Medium,
      ];

  AppTypography withColor(Color? color) => AppTypography(
        headline1ExtraBold: AppTextStyles.headline1ExtraBold.apply(color: color),
        body20Bold: AppTextStyles.body20Bold.apply(color: color),
        body15Bold: AppTextStyles.body15Bold.apply(color: color),
        body10Bold: AppTextStyles.body10Bold.apply(color: color),
        body20ExtraBold: AppTextStyles.body20ExtraBold.apply(color: color),
        body15Semibold: AppTextStyles.body15Semibold.apply(color: color),
        body13Medium: AppTextStyles.body13Medium.apply(color: color),
        body15Medium: AppTextStyles.body15Medium.apply(color: color),
      );
}
