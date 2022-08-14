import 'package:flutter/material.dart';
import 'package:kana/utilities/defaults.dart';

class HomePageCustomPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    canvas.drawRect(
        Rect.fromPoints(
            const Offset(0, 0), Offset(size.width, size.height * .4)),
        Paint()..color = maybePrimary);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
