import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int noteNumber){
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNumber.wav'));
  }
  Widget buildKey( int noteNumber,  Color keyColor,) {
    return Expanded(
      child: GestureDetector(
        onTap: () {
          playSound(noteNumber);
        },
        child: Container(
          height: 50,
          width: 130,
          color: keyColor,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                buildKey(1, Colors.red),
                buildKey(2, Colors.orange),
                buildKey(3, Colors.yellow),
                buildKey(4, Colors.green),
                buildKey(5, Colors.blue),
                buildKey(6, Colors.lightBlueAccent),
                buildKey(4, Colors.purple),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
