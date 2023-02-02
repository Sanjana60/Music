import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

Expanded tile(Color col, String note) {
  return Expanded(
    child: TextButton(
      style: ButtonStyle(backgroundColor: MaterialStateProperty.all(col)),
      onPressed: () {
        final player = AudioPlayer();
        player.play(AssetSource(note));
      },
      child: const Text(''),
    ),
  );
}

void main() {
  runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            tile(Colors.purpleAccent, 'note1.wav'),
            tile(Colors.red, 'note2.wav'),
            tile(Colors.blue, 'note3.wav'),
            tile(Colors.pink, 'note4.wav'),
            tile(Colors.green, 'note5.wav'),
            tile(Colors.yellow, 'note6.wav'),
            tile(Colors.orange, 'note7.wav'),
          ],
        ),
      ),
    ),
  ));
}
