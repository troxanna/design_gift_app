import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

class AppShadows extends Equatable {
  const AppShadows();

  BoxShadow get shadow7 => _shadow7;
  BoxShadow get shadow12 => _shadow12;

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

  @override
  List<Object?> get props => [
        _shadow7,
        _shadow12,
      ];
}
