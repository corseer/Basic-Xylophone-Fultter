import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buildKey({Color colorCode, int keyNo}) {
    return Expanded(
      child: FlatButton(
        color: colorCode,
        onPressed: () {
          playSound(keyNo);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: <Widget>[
                  buildKey(colorCode: Colors.red, keyNo: 1),
                  buildKey(colorCode: Colors.yellow, keyNo: 2),
                  buildKey(colorCode: Colors.blue, keyNo: 3),
                  buildKey(colorCode: Colors.green, keyNo: 4),
                  buildKey(colorCode: Colors.orange, keyNo: 5),
                  buildKey(colorCode: Colors.cyan, keyNo: 6),
                  buildKey(colorCode: Colors.purple, keyNo: 7),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
