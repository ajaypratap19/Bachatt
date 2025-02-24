import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AppColor {
  AppColor._();
  static Color appBackgroundColor = Color.fromRGBO(58, 12, 163, 1);
  static Color baseGrey800 = Color.fromRGBO(29, 41, 57, 1);
  static Color baseGrey500 = Color.fromRGBO(102, 112, 133, 1);
  static Color lightGray = Color.fromRGBO(217, 217, 217, 1);
  static Color charcoal = Color.fromRGBO(64, 64, 64, 1);
  static Color suvaGrey = Color.fromRGBO(144, 144, 144, 1);
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
