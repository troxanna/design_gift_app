import 'package:gift_app/theme/data/colors/background_colors_data.dart';
import 'package:gift_app/theme/data/colors/text_colors_data.dart';

class AppColorScheme {
  const AppColorScheme({
    required this.background,
    required this.textColor,
  });

  factory AppColorScheme.light() => AppColorScheme(
        background: BackgroundColorsData.light(),
        textColor: TextColorsData.light(),
      );

  factory AppColorScheme.dark() => AppColorScheme(
        background: BackgroundColorsData.dark(),
        textColor: TextColorsData.dark(),
      );

  final BackgroundColorsData background;
  final TextColorsData textColor;

  AppColorScheme copyWith({
    BackgroundColorsData? background,
    TextColorsData? textColor,
  }) =>
      AppColorScheme(
        background: background ?? this.background,
        textColor: textColor ?? this.textColor,
      );
}