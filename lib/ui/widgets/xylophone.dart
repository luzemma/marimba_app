import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:marimba_app/ui/widgets/xylophone_button.dart';

class Xylophone extends StatefulWidget {
  const Xylophone({super.key});

  @override
  State<Xylophone> createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  late AudioPlayer _audioPlayer;

  @override
  void initState() {
    super.initState();
    _audioPlayer = AudioPlayer();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    final height = size.height * 0.11;
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        XylophoneButton(
          color: Colors.red,
          height: height,
          playSound: () => playSound(1),
        ),
        XylophoneButton(
          color: Colors.orange,
          height: height,
          playSound: () => playSound(2),
        ),
        XylophoneButton(
          color: Colors.yellow,
          height: height,
          playSound: () => playSound(3),
        ),
        XylophoneButton(
          color: Colors.green,
          height: height,
          playSound: () => playSound(3),
        ),
        XylophoneButton(
          color: Colors.teal,
          height: height,
          playSound: () => playSound(5),
        ),
        XylophoneButton(
          color: Colors.blue,
          height: height,
          playSound: () => playSound(6),
        ),
        XylophoneButton(
          color: Colors.purple,
          height: height,
          playSound: () => playSound(7),
        ),
      ],
    );
  }

  Future<void> playSound(int number) async {
    await _audioPlayer.stop();
    await _audioPlayer.play(
      AssetSource('audios/note$number.wav'),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
