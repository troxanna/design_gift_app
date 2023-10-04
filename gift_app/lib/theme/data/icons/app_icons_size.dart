import 'package:equatable/equatable.dart';

class AppIconsSizes extends Equatable {
  const AppIconsSizes({
    required this.size50,
    required this.size24,
    required this.size22,
    required this.size18,
    required this.size15,
  });

  factory AppIconsSizes.regular() => const AppIconsSizes(
        size50: 50,
        size24: 24,
        size22: 22,
        size18: 18,
        size15: 15,
      );

  final double size50;
  final double size24;
  final double size22;
  final double size18;
  final double size15;

  @override
  List<Object?> get props => [
        size50,
        size24,
        size22,
        size18,
        size15,
      ];
}
