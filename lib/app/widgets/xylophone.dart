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
          number: 1,
          //onTap: () => playSound(1),
        ),
        XylophoneButton(
          color: Colors.orange,
          number: 2,
          //onTap: () => playSound(2),
        ),
        XylophoneButton(
          color: Colors.yellow,
          number: 3,
          //onTap: () => playSound(3),
        ),
        XylophoneButton(
          color: Colors.green,
          number: 4,
          //onTap: () => playSound(3),
        ),
        XylophoneButton(
          color: Colors.teal,
          number: 5,
          //onTap: () => playSound(5),
        ),
        XylophoneButton(
          color: Colors.blue,
          number: 6,
          //onTap: () => playSound(6),
        ),
        XylophoneButton(
          color: Colors.purple,
          number: 7,
          //onTap: () => playSound(7),
        ),
      ],
    );
  }

  void playSound(int number) async {
    await _audioPlayer.stop();
    _audioPlayer.play(
      AssetSource('assets/audios/note$number.wav'),
    );
  }

  @override
  void dispose() {
    _audioPlayer.dispose();
    super.dispose();
  }
}
