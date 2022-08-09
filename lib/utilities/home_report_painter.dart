import 'dart:math';

import 'package:flutter/material.dart';

class ProgressPainter extends CustomPainter {
  Color defaultCircleColor;
  late Color percentageCompletedColor;
  double completedPercentage;
  double circleWidth;

  ProgressPainter({
    required this.defaultCircleColor,
    required this.percentageCompletedColor,
    required this.completedPercentage,
    required this.circleWidth,
  });

  getPaint(Color color) {
    return Paint()
      ..color = color
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.stroke
      ..strokeWidth = circleWidth;
  }

  @override
  void paint(Canvas canvas, Size size) {
    var defaultCirclePaint = getPaint(defaultCircleColor);
    var progressCirclePaint = getPaint(percentageCompletedColor);

    var center = Offset(size.width / 2, size.height / 2);
    var radius = min(size.width / 2, size.height / 2);

    canvas.drawCircle(center, radius, defaultCirclePaint);

    var arcAngle = 2 * pi * (completedPercentage / 100);
    canvas.drawArc(Rect.fromCircle(center: center, radius: radius), -pi / 2,
        arcAngle, false, progressCirclePaint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
