import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:marimba_app/app/widgets/xylophone_button.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        XylophoneButton(
          color: Colors.red,
          playSound: () => playSound(1),
        ),
        XylophoneButton(
          color: Colors.orange,
          playSound: () => playSound(2),
        ),
        XylophoneButton(
          color: Colors.yellow,
          playSound: () => playSound(3),
        ),
        XylophoneButton(
          color: Colors.green,
          playSound: () => playSound(3),
        ),
        XylophoneButton(
          color: Colors.teal,
          playSound: () => playSound(5),
        ),
        XylophoneButton(
          color: Colors.blue,
          playSound: () => playSound(6),
        ),
        XylophoneButton(
          color: Colors.purple,
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
