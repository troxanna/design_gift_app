import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AccentColorsData extends Equatable {
  const AccentColorsData({
    required this.primary,
  });

  factory AccentColorsData.light() => const AccentColorsData(
        primary: _primaryLight,
      );

  factory AccentColorsData.dark() => const AccentColorsData(
        primary: _primaryDark,
      );

  final Color primary;

  static const Color _primaryLight = Color.fromRGBO(255, 255, 255, 1);

  static const Color _primaryDark = Color.fromRGBO(255, 255, 255, 1);

  @override
  List<Object?> get props => [
        primary,
      ];
}
