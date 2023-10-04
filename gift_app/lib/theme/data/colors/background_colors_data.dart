import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class BackgroundColorsData extends Equatable {
  const BackgroundColorsData({
    required this.primary,
    required this.secondary,
  });

  factory BackgroundColorsData.light() => const BackgroundColorsData(
        primary: _primaryLight,
        secondary: _secondaryLight,
      );

  factory BackgroundColorsData.dark() => const BackgroundColorsData(
        primary: _primaryDark,
        secondary: _secondaryDark,
      );

  final Color primary;
  final Color secondary;

  static const Color _primaryLight = Color.fromRGBO(253, 253, 253, 1);
  static const Color _secondaryLight = Color.fromRGBO(253, 253, 253, 1);

  static const Color _primaryDark = Color.fromRGBO(252, 239, 242, 1);
  static const Color _secondaryDark = Color.fromRGBO(252, 239, 242, 1);

  @override
  List<Object?> get props => [
        primary,
        secondary,
      ];
}