import 'package:flutter/material.dart';
import 'package:marimba_app/ui/widgets/oval_painter.dart';

class XylophoneButton extends StatefulWidget {
  const XylophoneButton({
    required this.color,
    required this.height,
    required this.playSound,
    super.key,
  });

  final Color color;
  final double height;
  final void Function() playSound;

  @override
  State<XylophoneButton> createState() => _XylophoneButtonState();
}

class _XylophoneButtonState extends State<XylophoneButton>
    with SingleTickerProviderStateMixin {
  late Animation<double> _animation;
  late AnimationController _controller;

  double scale = 0;

  @override
  void initState() {
    super.initState();
    final scaleTween = Tween<double>(begin: 1, end: 0.95);
    _controller = AnimationController(
      duration: const Duration(milliseconds: 130),
      vsync: this,
    );
    _animation = scaleTween.animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.elasticOut,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        _animate();
        widget.playSound.call();
      },
      child: ScaleTransition(
        scale: _animation,
        child: Container(
          height: widget.height,
          margin: const EdgeInsets.only(bottom: 8),
          decoration: BoxDecoration(
            color: widget.color,
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
      ),
    );
  }

  void _animate() {
    _controller
      ..reset()
      ..forward(from: 0)
      ..reverse(from: 1);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
