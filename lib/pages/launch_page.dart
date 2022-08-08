import 'dart:math';
import 'dart:ui' as ui;

import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

import '../pages/homepage.dart';
import '../utilities/colors.dart';
import '../widgets/indicator.dart';

class LaunchPage extends StatefulWidget {
  const LaunchPage({super.key});

  @override
  State<LaunchPage> createState() => _LaunchPageState();
}

class _LaunchPageState extends State<LaunchPage> {
  AnimatedContainer indicator({double? height, double? width, Color? color}) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      height: height,
      width: width,
      margin: const EdgeInsets.only(right: 5),
      decoration: BoxDecoration(
        color: color,
        shape: BoxShape.rectangle,
        borderRadius: const BorderRadius.all(
          Radius.circular(15),
        ),
      ),
    );
  }

  int _selectedIndex = 0;
  final int _numberOfIndicators = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        foregroundPainter: LaunchPagePainter(),
        child: _controlsLauch(context),
      ),
    );
  }

  _controlsLauch(BuildContext context) {
    return SafeArea(
      child: Stack(
        children: [
          Positioned(
            bottom: 10,
            left: 0,
            right: 0,
            child: Row(
              children: [
                Expanded(
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 300),
                    opacity: _selectedIndex > 0 ? 1.0 : 0.0,
                    child: OutlinedButton(
                      onPressed: () {
                        // TODO
                        if (_selectedIndex > 0) {
                          setState(() {
                            _selectedIndex -= 1;
                          });
                        }
                      },
                      style: OutlinedButton.styleFrom(
                        shape: const CircleBorder(),
                        side: BorderSide(
                          color: primaryColor,
                          width: 8.0,
                        ),
                      ),
                      child: Container(
                        margin: const EdgeInsets.only(
                          top: 15,
                          bottom: 15,
                          left: 15,
                          right: 10,
                        ),
                        child: Icon(
                          FluentIcons.ios_arrow_ltr_24_filled,
                          color: primaryColor,
                        ),
                      ),
                    ),
                  ),
                ),
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: List.generate(
                        _numberOfIndicators,
                        (index) =>
                            Indicator(isSelected: index == _selectedIndex)),
                  ),
                ),
                Expanded(
                  child: OutlinedButton(
                    onPressed: () {
                      if (_selectedIndex == _numberOfIndicators - 1) {
                        Navigator.pushReplacementNamed(
                            context, HomePage.routeName);
                      }

                      setState(() {
                        _selectedIndex += 1;
                      });
                    },
                    style: OutlinedButton.styleFrom(
                      shape: const CircleBorder(),
                      side: BorderSide(
                        color: primaryColor,
                        width: 8.0,
                      ),
                    ),
                    child: Container(
                      margin: const EdgeInsets.only(
                        top: 15,
                        bottom: 15,
                        left: 10,
                        right: 15,
                      ),
                      child: Icon(
                        FluentIcons.ios_arrow_rtl_24_filled,
                        color: primaryColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class LaunchPagePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var bushThirdCircle = Paint()
      ..color = const Color(0xFF6658A8)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;

    var radius = min(size.width / 2, size.height / 2);

    canvas.drawCircle(Offset(size.width * .74, size.height * .11), radius - 50,
        bushThirdCircle);

    var bushFirstCircle = Paint()
      ..color = const Color(0xFFF95679)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;

    canvas.drawArc(
        Rect.fromCenter(
            center: Offset(size.width * .14, size.height * .15),
            width: 360,
            height: 390),
        -pi / 2,
        50,
        false,
        bushFirstCircle);

    var bushSecondCircle = Paint()
      ..color = const Color(0xFFFAC02D)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;

    canvas.drawCircle(
        Offset(size.width * .11, size.height * .13), 140, bushSecondCircle);

    var paragraphHeaderBuilder = ui.ParagraphBuilder(ui.ParagraphStyle())
      ..pushStyle(ui.TextStyle(
          color: Colors.black,
          fontSize: 25,
          letterSpacing: .2,
          fontWeight: ui.FontWeight.bold))
      ..addText('Vamos descobrir como gerir suas finanças');
    var paragraphHeader = paragraphHeaderBuilder.build();
    paragraphHeader.layout(ui.ParagraphConstraints(width: size.width * .8));
    canvas.drawParagraph(paragraphHeader, Offset(20, size.height * .66));

    var paragraphBuilder = ui.ParagraphBuilder(ui.ParagraphStyle())
      ..pushStyle(
          ui.TextStyle(color: Colors.black87, fontSize: 16, letterSpacing: .2))
      ..addText(
          'Vamos encontrar uma maneira de gerir suas finanças para que sejam fáceis de entender e organizadas ordenadamente');
    var paragraph = paragraphBuilder.build();
    paragraph.layout(ui.ParagraphConstraints(width: size.width * .8));
    canvas.drawParagraph(paragraph, Offset(20, size.height * .76));

    var circle1 = Paint()
      ..color = const Color(0xFFF95679)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 10;
    canvas.drawCircle(Offset(size.width * .15, size.height * .55), 10, circle1);
    var circle2 = Paint()
      ..color = primaryColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 12;
    canvas.drawCircle(Offset(size.width * .58, size.height * .33), 12, circle2);
    var circle3 = Paint()
      ..color = const Color(0xFFFAC02D)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 15;
    canvas.drawCircle(Offset(size.width * .39, size.height * .48), 15, circle3);
    var circle4 = Paint()
      ..color = const Color(0xFF6658A8)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 8;
    canvas.drawCircle(Offset(size.width * .94, size.height * .31), 8, circle4);
    var circle5 = Paint()
      ..color = primaryColor
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 6;
    canvas.drawCircle(Offset(size.width * .84, size.height * .45), 6, circle5);
    var circle6 = Paint()
      ..color = const Color(0xFF6658A8)
      ..strokeCap = StrokeCap.round
      ..style = PaintingStyle.fill
      ..strokeWidth = 7;
    canvas.drawCircle(Offset(size.width * .68, size.height * .55), 7, circle6);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
