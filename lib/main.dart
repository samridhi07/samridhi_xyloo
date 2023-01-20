import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int soundNumber) {
    final player = AudioCache();
    player.play('note$soundNumber.wav');
  }

  Expanded buildKey({required Color color, required int soundNumber}) {
    return Expanded(
      child: TextButton(
          onPressed: () {
            playSound(soundNumber);
          },
          style: TextButton.styleFrom(
            backgroundColor: color, // Text Color
          ),
          child: const Text('')
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          title: const Center(
              child: Text('Play with the Xylophone')
          ),
          backgroundColor: Colors.black,
        ),
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildKey(color: Colors.purple, soundNumber: 1),
              buildKey(color: Colors.teal, soundNumber: 2),
              buildKey(color: Colors.blue, soundNumber: 3),
              buildKey(color: Colors.green, soundNumber: 4),
              buildKey(color: Colors.yellow, soundNumber: 5),
              buildKey(color: Colors.orange, soundNumber: 6),
              buildKey(color: Colors.red, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}