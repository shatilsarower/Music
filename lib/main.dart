import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(Musicapp());

class Musicapp extends StatelessWidget {

  void playSound(int ntnum){
    final player= AudioCache();
    player.play('note$ntnum.wav');
  }

  Expanded crtkey({Color color,int soundnumber}) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: (){
          playSound(soundnumber);
        },
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black87,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              crtkey(color: Colors.red,soundnumber:1),
              crtkey(color: Colors.orangeAccent,soundnumber:2),
              crtkey(color: Colors.yellowAccent,soundnumber:3),
              crtkey(color: Colors.green,soundnumber:4),
              crtkey(color: Colors.teal,soundnumber:5),
              crtkey(color: Colors.blue,soundnumber:6),
              crtkey(color: Colors.deepPurple,soundnumber:7),
            ],
          ),
        ),
      ),
    );
  }
}



