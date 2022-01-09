import 'dart:math';

import 'package:flutter/material.dart';

const _colors = [
  Colors.amber,
  Colors.blue,
  Colors.brown,
  Colors.indigo,
  Colors.lime,
  Colors.pink,
];
final _random = Random();

Color randomColor() => _colors[_random.nextInt(_colors.length)];
