import 'package:audioplayers/audioplayers.dart';
import "package:flutter/material.dart";

void main() {
  runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  const XylophoneApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Xylophone(),
    );
  }
}

class Xylophone extends StatefulWidget {
  const Xylophone({Key? key}) : super(key: key);

  @override
  State createState() => _XylophoneState();
}

class _XylophoneState extends State<Xylophone> {
  void playNote(int id) async {
    final audioPlayer = AudioPlayer();
    await audioPlayer.play(AssetSource('note$id.wav'));
  }

  Widget createButton(Color color, int position) {
    return Expanded(
      child: ElevatedButton(
        onPressed: () async {
          playNote(position);
        },
        child: Text(''),
        style: ElevatedButton.styleFrom(primary: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              createButton(Colors.red, 1),
              createButton(Colors.orange, 2),
              createButton(Colors.purple, 3),
              createButton(Colors.yellow, 4),
              createButton(Colors.indigo, 5),
              createButton(Colors.blue, 6),
              createButton(Colors.green, 7),
            ],
          ),
        ),
      ),
    );
  }
}
