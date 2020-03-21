import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {

  void play(int noteNumber){
    final player =AudioCache();
    player.play("note$noteNumber.wav");
  }

  Expanded buildkey({Color color, int notenumber}){
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          play(notenumber);
        }, child: null,
      ),
    );

  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildkey(color: Colors.red, notenumber:1),
              buildkey(color: Colors.orange, notenumber:2),
              buildkey(color: Colors.amberAccent, notenumber:3),
              buildkey(color: Colors.green[900], notenumber:4),
              buildkey(color: Colors.blue[800], notenumber:5),
              buildkey(color: Colors.deepPurple, notenumber:6),
              buildkey(color: Colors.white70, notenumber:7),
            ],
          ),

        ),
      ),
    );
  }
}