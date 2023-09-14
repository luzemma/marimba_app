import 'package:flutter/material.dart';
import 'package:marimba_app/app/widgets/oval_painter.dart';

class XylophoneButton extends StatelessWidget {
  const XylophoneButton({
    required this.color,
    required this.number,
    super.key,
  });

  final Color color;
  final int number;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        margin: const EdgeInsets.only(bottom: 8),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            CustomPaint(
              painter: OvalPainter(backgroundColor: Colors.black),
            ),
            const SizedBox(
              width: 100,
            ),
            CustomPaint(
              painter: OvalPainter(backgroundColor: Colors.black),
            )
          ],
        ),
      ),
    );
  }
}
