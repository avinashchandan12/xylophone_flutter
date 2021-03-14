// import 'package:flutter/material.dart';
// import 'package:audioplayers/audio_cache.dart';
//
// void main() => runApp(XylophoneApp());
//
// class XylophoneApp extends StatelessWidget {
//   void playSound(int soundNumber) {
//     final player = AudioCache();
//     player.play('note$soundNumber.wav');
//   }
//
//   Expanded buildKey({Color color, int soundNumber}) {
//     return Expanded(
//       child: TextButton(
//         //color: color,
//         onPressed: () {
//           playSound(soundNumber);
//         },
//       ),
//     );
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         backgroundColor: Colors.deepOrangeAccent,
//         body: SafeArea(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.stretch,
//             children: <Widget>[
//               buildKey(color: Colors.red, soundNumber: 1),
//               buildKey(color: Colors.orange, soundNumber: 2),
//               buildKey(color: Colors.yellow, soundNumber: 3),
//               buildKey(color: Colors.green, soundNumber: 4),
//               buildKey(color: Colors.teal, soundNumber: 5),
//               buildKey(color: Colors.blue, soundNumber: 6),
//               buildKey(color: Colors.purple, soundNumber: 7),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(Xylophone());
}

class Xylophone extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
              child: Text(
            'Xylophone App Flutter ! Enjoy',
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 17,
                color: Colors.cyanAccent,
                letterSpacing: 2.5),
          )),
          backgroundColor: Colors.deepOrangeAccent,
          //title: Text('this is'),
        ),
        body: Xylo(),
      ),
    );
  }
}

class Xylo extends StatefulWidget {
  @override
  _XyloState createState() => _XyloState();
}

class _XyloState extends State<Xylo> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.white,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: Alignment.centerRightr,
            children: [
              Expanded(
                child: FlatButton(
                    color: Colors.blue,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note1.wav');
                    },
                    child: Text('Press here')),
              ),
              Expanded(
                child: FlatButton(
                    // focusColor: Colors.teal,
                    color: Colors.tealAccent,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note2.wav');
                    },
                    child: Text('Press here')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.lightGreen,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note3.wav');
                    },
                    child: Text('Press here')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.yellowAccent,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note4.wav');
                    },
                    child: Text('Press here')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.orangeAccent,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note5.wav');
                    },
                    child: Text('Press here')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.black12,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note6.wav');
                    },
                    child: Text('Press here')),
              ),
              Expanded(
                child: FlatButton(
                    color: Colors.purpleAccent,
                    onPressed: () {
                      final player = AudioCache();
                      player.play('note7.wav');
                    },
                    child: Text('Press here')),
              ),
              // Container(
              //   //padding: Border.all(width: 200, heigt),
              //   height: 200,
              //   width: 200,
              //   color: Colors.blueGrey,
              //   child: (Text('Try it out')),
              // )
            ],
          ),
        ));
  }
}
