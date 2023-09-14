import 'package:flutter/material.dart';

class OvalPainter extends CustomPainter {
  OvalPainter({
    required this.backgroundColor,
  }) {
    paintConfig
      ..style = PaintingStyle.fill
      ..color = backgroundColor;
  }

  final Color backgroundColor;
  final Paint paintConfig = Paint();

  @override
  void paint(Canvas canvas, Size size) {
    final center = Offset(size.width / 2, size.height / 2);
    canvas.drawOval(
      Rect.fromCenter(center: center, width: 15, height: 20),
      paintConfig,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
