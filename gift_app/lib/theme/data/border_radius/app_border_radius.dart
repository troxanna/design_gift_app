import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppBorderRadius extends Equatable {
  const AppBorderRadius({
    required this.radius22,
    required this.radius25,
    required this.radiusHorizontal5,
    required this.radiusTop22,
  });

  factory AppBorderRadius.regular() => const AppBorderRadius(
        radius22: BorderRadius.all(
          Radius.circular(22),
        ),
        radius25: BorderRadius.all(
          Radius.circular(25),
        ),
        radiusHorizontal5: BorderRadius.horizontal(
          left: Radius.circular(5),
          right: Radius.circular(5),
        ),
        radiusTop22: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        ),
      );

  final BorderRadius radius22;
  final BorderRadius radius25;
  final BorderRadius radiusHorizontal5;
  final BorderRadius radiusTop22;

  @override
  List<Object?> get props => [
        radius22,
        radius25,
        radiusHorizontal5,
        radiusTop22
      ];
}
