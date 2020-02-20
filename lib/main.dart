import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: Icon(Icons.music_note, color: Colors.white),
          centerTitle: true,
          title: Text(
            'Xylophone',
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
        body: SafeArea(
          child: XylophoneApp(),
        ),
      ),
    ),
  );
}

class XylophoneApp extends StatelessWidget {

  Expanded soundColorButton({Color color, int nbr})
  {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () => AudioCache().play('note$nbr.wav'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        soundColorButton(color: Colors.red, nbr: 1),
        soundColorButton(color: Colors.orange, nbr: 2),
        soundColorButton(color: Colors.yellow, nbr: 3),
        soundColorButton(color: Colors.greenAccent, nbr: 4),
        soundColorButton(color: Colors.teal, nbr: 5),
        soundColorButton(color: Colors.blue, nbr: 6),
        soundColorButton(color: Colors.purple, nbr: 7),
      ],
    );
  }
}
