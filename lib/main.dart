import "package:flutter/material.dart";
import 'package:audioplayers/audioplayers.dart';

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
  Widget createButton(Color color, int position) {
    return ElevatedButton(
      onPressed: () {},
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
            children: [
              createButton(Colors.red, 1),
              createButton(Colors.green, 1),
              createButton(Colors.purple, 1),
              createButton(Colors.yellow, 1),
              createButton(Colors.indigo, 1),
              createButton(Colors.blue, 1),
              createButton(Colors.lime, 1),
            ],
          ),
        ),
      ),
    );
  }
}
