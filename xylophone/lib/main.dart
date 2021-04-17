import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AudioCache audioCache = AudioCache();
  Expanded paintMusic({Color color,int soundNumber}) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          audioCache.load('note$soundNumber.wav');
          audioCache.play('note$soundNumber.wav');
        },
        child: Text("     "),
        style: TextButton.styleFrom(backgroundColor: color),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              paintMusic(color: Colors.teal,soundNumber: 1),
              paintMusic(color: Colors.blueAccent,soundNumber: 2),
              paintMusic(color: Colors.purple,soundNumber: 3),
              paintMusic(color: Colors.yellow[500],soundNumber: 4),
              paintMusic(color: Colors.yellow[700],soundNumber: 5),
              paintMusic(color: Colors.orange[800],soundNumber: 6),
              paintMusic(color: Colors.red[900],soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}
/* Expanded(
                child: TextButton(onPressed: (){playSound(2);},
                  child: Text("     "),
                  style: TextButton.styleFrom(backgroundColor: Colors.blueGrey, ),
                ),

              ),
              Expanded(
                child: TextButton(onPressed: (){
                  playSound(3);
                },
                  child: Text("     "),
                  style: TextButton.styleFrom(backgroundColor: Colors.purple, ),
                ),

              ),
              Expanded(
                child: TextButton(onPressed: (){
                  playSound(4);
                },
                  child: Text("     "),
                  style: TextButton.styleFrom(backgroundColor: Colors.yellow[900], ),
                ),

              ),
              Expanded(
                child: TextButton(onPressed: (){
                  playSound(5);
                },
                  child: Text("     "),
                  style: TextButton.styleFrom(backgroundColor: Colors.red, ),
                ),

              ),
              Expanded(
                child: TextButton(onPressed: (){
                  playSound(6);
                },
                  child: Text("     "),
                  style: TextButton.styleFrom(backgroundColor: Colors.red[800], ),
                ),

              ),
              Expanded(
                child: TextButton(onPressed: (){
                  playSound(7);
                },
                  child: Text("     "),
                  style: TextButton.styleFrom(backgroundColor: Colors.brown, ),
                ),

              ), */
