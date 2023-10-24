import 'package:gift_app/theme/data/colors/background_colors_data.dart';
import 'package:gift_app/theme/data/colors/text_colors_data.dart';
import 'package:gift_app/theme/data/colors/accent_colors_data.dart';


class AppColorScheme {
  const AppColorScheme({
    required this.background,
    required this.textColor,
    required this.accent,
  });

  factory AppColorScheme.light() => AppColorScheme(
        background: BackgroundColorsData.light(),
        textColor: TextColorsData.light(),
        accent: AccentColorsData.light(),
      );

  factory AppColorScheme.dark() => AppColorScheme(
        background: BackgroundColorsData.dark(),
        textColor: TextColorsData.dark(),
        accent: AccentColorsData.dark(),
      );

  final BackgroundColorsData background;
  final TextColorsData textColor;
  final AccentColorsData accent;

  AppColorScheme copyWith({
    BackgroundColorsData? background,
    TextColorsData? textColor,
    AccentColorsData? accent,
  }) =>
      AppColorScheme(
        background: background ?? this.background,
        textColor: textColor ?? this.textColor,
        accent: accent ?? this.accent,
      );
}