import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class TextColorsData extends Equatable {
  const TextColorsData({
    required this.inactive,
    required this.primary,
    required this.secondary,
  });

  factory TextColorsData.light() => const TextColorsData(
        inactive: _inactiveLight,
        primary: _primaryLight,
        secondary: _secondaryLight,
      );

  factory TextColorsData.dark() => const TextColorsData(
        inactive: _inactiveDark,
        primary: _primaryDark,
        secondary: _secondaryDark,
      );

  final Color inactive;
  final Color primary;
  final Color secondary;

  static const Color _inactiveLight = Color.fromRGBO(76, 83, 93, 0.3);
  static const Color _inactiveDark = Color.fromRGBO(76, 83, 93, 0.3);

  static const Color _primaryLight = Color.fromRGBO(76, 83, 93, 1);
  static const Color _primaryDark = Color.fromRGBO(76, 83, 93, 1);

  static const Color _secondaryLight = Color.fromRGBO(76, 83, 93, 0.85);
  static const Color _secondaryDark = Color.fromRGBO(76, 83, 93, 0.85);

  @override
  List<Object?> get props => [
        inactive,
        primary,
        secondary,
      ];
}
