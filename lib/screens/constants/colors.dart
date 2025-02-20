import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppColor {
  AppColor._();
  static Color appBackgroundColor = const Color(0xFF3A0CA3);
  static ContainerColor containerColor = ContainerColor();
  static TextColor textColor = TextColor();
  //LinearGradient
  static const Gradient linearGradient = LinearGradient(
    begin: Alignment(0.0, 0.0),
    end: Alignment(0.707, -0.707),
    colors: [
      Color(0xff6900C6),
      Color(0xffEEE3FF),
    ],
  );
}

class ContainerColor {}

class TextColor {}
