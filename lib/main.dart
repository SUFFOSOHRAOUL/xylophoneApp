import 'package:flutter/material.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

void main() {
  runApp(XylophoneApp());
}

void playSound(int soundNumber) {
  final assetsAudioPlayer = AssetsAudioPlayer();

  assetsAudioPlayer.open(
    Audio("assets/note$soundNumber.wav"),
  );
}

Expanded buildKey({Color? color, int? soundNumber}) {
  return Expanded(
    child: Container(
      color: color,
      child: TextButton(
        onPressed: () {
          playSound(soundNumber!);
        },
        child: Text(''),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(color: Colors.blue, soundNumber: 1),
              buildKey(color: Colors.red, soundNumber: 2),
              buildKey(color: Colors.green, soundNumber: 3),
              buildKey(color: Colors.yellow, soundNumber: 4),
              buildKey(color: Colors.orange, soundNumber: 5),
              buildKey(color: Colors.teal, soundNumber: 5),
              buildKey(color: Colors.pink, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
