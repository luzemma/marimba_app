import 'package:flutter/material.dart';
import 'package:marimba_app/ui/widgets/xylophone.dart';

class XylophoneScreen extends StatelessWidget {
  const XylophoneScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                'assets/images/wood3.jpeg',
                fit: BoxFit.cover,
              ),
            ),
            const Positioned.fill(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Xylophone(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
