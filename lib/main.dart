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
    return ElevatedButton(
      onPressed: () async {
        playNote(position);
      },
      child: Text(''),
      style: ElevatedButton.styleFrom(primary: color),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: createButton(Colors.red, 1),
              ),
              Expanded(
                child: createButton(Colors.orange, 2),
              ),
              Expanded(
                child: createButton(Colors.purple, 3),
              ),
              Expanded(
                child: createButton(Colors.yellow, 4),
              ),
              Expanded(
                child: createButton(Colors.indigo, 5),
              ),
              Expanded(
                child: createButton(Colors.blue, 6),
              ),
              Expanded(
                child: createButton(Colors.cyan, 7),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
