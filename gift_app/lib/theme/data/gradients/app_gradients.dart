import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppGradient extends Equatable {
  const AppGradient({
    required this.primary,
    required this.secondary,
    required this.tertiary,
  });

  factory AppGradient.light() => const AppGradient(
        primary: _primaryLight,
        secondary: _secondaryLight,
        tertiary: _tertiaryLight,
      );

  factory AppGradient.dark() => const AppGradient(
        primary: _primaryDark,
        secondary: _secondaryDark,
        tertiary: _tertiaryDark,
      );

  final Gradient primary;
  final Gradient secondary;
  final Gradient tertiary;

  static const Gradient _primaryLight = LinearGradient(
    begin: Alignment(-1.00, 0.04),
    end: Alignment(1, -0.04),
    colors: [
      Color(0xFFFFA68D),
      Color(0xFFFD3A84),
    ],
  );
  static const Gradient _secondaryLight = LinearGradient(
    begin: Alignment(0.00, -1.00),
    end: Alignment(0, 1),
    colors: [Color(0xFFDEE7F3), Color(0xFFD0CEEE)],
  );
  static const Gradient _tertiaryLight = LinearGradient(
    begin: Alignment(1.00, -0.08),
    end: Alignment(-1, 0.08),
    colors: [
      Color(0x02E5E5E5),
      Color(0xFFFDFDFD),
    ],
  );

  static const Gradient _primaryDark = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color.fromARGB(255, 166, 141, 1),
      Color.fromRGBO(253, 58, 132, 1),
    ],
  );
  static const Gradient _secondaryDark = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      Color.fromARGB(222, 231, 243, 1),
      Color.fromRGBO(209, 206, 238, 1),
    ],
  );
  static const Gradient _tertiaryDark = LinearGradient(
    begin: Alignment(1.00, -0.08),
    end: Alignment(-1, 0.08),
    colors: [
      Color(0x02E5E5E5),
      Color(0xFFFDFDFD),
    ],
  );

  @override
  List<Object?> get props => [
        primary,
        secondary,
        tertiary,
      ];
}
