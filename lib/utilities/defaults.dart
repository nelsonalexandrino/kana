import 'dart:math' as math;

import 'package:flutter/material.dart';

Color primaryColor = const Color(0xFFFD6456);

Color backgroundColorNumbersAndIcons = const Color(0xFFF8F2F7);

Color grey = const Color(0xff616657);

Color maybePrimary = const Color(0xFF0139A5);

Color maybeGreen = Color(0xFF22A45D);

List<Color> categoryColors = const [
  Color(0xFF1D1E23),
  //Color(0xFF00A8F4),
  Color(0xFF05B8BE),
  Color(0xFFFEC334),
  Color(0xFFFD5C7C),
  Color(0xFFF94849),
  Color(0xFFFF9F00),
  //Color(0xFFFFC118),
  Color(0xFF42C283),
  Color(0xFF3843B8),
  Color(0xFF8B17FF),
  //Color(0xFFFD34AC),
  Color(0xFF33C6FD),
  Color(0xFFC3CCD5),
  Color(0xFF353F47),
];

var shadow = BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  spreadRadius: 1,
  blurRadius: 1,
  offset: const Offset(0, 0), // changes position of shadow
);
var shadow2 = BoxShadow(
  color: Colors.grey.withOpacity(0.2),
  spreadRadius: 1,
  blurRadius: 1,
  offset: const Offset(0, 1), // changes position of shadow
);

var yearMonths = [
  'Janeiro',
  'Fevereiro',
  'Março',
  'Abril',
  'Maio',
  'Junho',
  'Julho',
  'Agosto',
  'Setembro',
  'Outubro',
  'Novembro',
  'Dezembro',
];

var randomColor =
    Color((math.Random().nextDouble() * 0xFFFFFF).toInt()).withOpacity(1.0);
