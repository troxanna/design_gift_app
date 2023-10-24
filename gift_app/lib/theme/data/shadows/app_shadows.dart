import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppShadows extends Equatable {
  const AppShadows();

  List<BoxShadow> get shadow7 => [_shadow7];
  List<BoxShadow> get shadow12 => [_shadow12];
  List<BoxShadow> get shadow10 => [_shadow10];

  static const BoxShadow _shadow7 = BoxShadow(
    blurRadius: 7,
    color: Color.fromRGBO(0, 0, 0, 0.25),
    offset: Offset(0, -1),
    spreadRadius: 0,
  );

  static const BoxShadow _shadow12 = BoxShadow(
    blurRadius: 12,
    offset: Offset(0, 0),
    spreadRadius: 0,
  );

  static const BoxShadow _shadow10 = BoxShadow(
    color: Color(0x26000000),
    blurRadius: 10,
    offset: Offset(2, 2),
  );

  @override
  List<Object?> get props => [
        _shadow7,
        _shadow12,
        _shadow10,
      ];
}
