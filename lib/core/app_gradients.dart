import 'dart:math';
import 'dart:ui';

import 'package:flutter/material.dart';

class AppGradients {
  static final linear = LinearGradient(colors: [
    Color(0xFFDAE7F2),
    Color.fromRGBO(184, 196, 204, 1),
  ], stops: [
    0.25,
    1
  ], transform: GradientRotation(2.13959913 * pi));
}
