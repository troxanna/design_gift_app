import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gift_app/theme/data/app_theme_data.dart';

class MaterialTheme {
  MaterialTheme._();

  static ThemeData get darkTheme => _materialTheme(
        colorScheme: AppColorScheme.dark(),
        typography: AppTypography.regular(),
        brightness: Brightness.dark,
      );

  static ThemeData get lightTheme => _materialTheme(
        colorScheme: AppColorScheme.light(),
        typography: AppTypography.regular(),
        brightness: Brightness.light,
      );

  static ThemeData _materialTheme({
    required AppColorScheme colorScheme,
    required AppTypography typography,
    required Brightness brightness,
  }) {
    final backgroundColor = colorScheme.background.primary;

    final isBrightnessLight = brightness == Brightness.light;

    final buttonTheme = ButtonStyle(
      elevation: MaterialStateProperty.all(0),
      shape: MaterialStateProperty.all<OutlinedBorder>(
        const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(22)),
        ),
      ),
    );

    return ThemeData(
      brightness: brightness,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: backgroundColor,
          systemNavigationBarColor: backgroundColor,
          systemNavigationBarIconBrightness:
              isBrightnessLight ? Brightness.dark : Brightness.light,
          statusBarIconBrightness:
              isBrightnessLight ? Brightness.dark : Brightness.light,
          statusBarBrightness:
              isBrightnessLight ? Brightness.light : Brightness.dark,
        ),
        backgroundColor: backgroundColor,
        centerTitle: true,
        foregroundColor: backgroundColor,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: buttonTheme,
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: buttonTheme,
      ),
      textButtonTheme: TextButtonThemeData(
        style: buttonTheme,
      ),
    );
  }
}
