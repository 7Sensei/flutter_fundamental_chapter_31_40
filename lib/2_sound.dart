import 'dart:html';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  String durasi = '00:00:00:00';
  AudioPlayer audioPlayer;

  _MyAppState() {
    audioPlayer = AudioPlayer();
    audioPlayer.onAudioPositionChanged.listen((duration) {
      setState(() {
        durasi = duration.toString();
      });
    });
    audioPlayer.setReleaseMode(ReleaseMode.LOOP);
  }

  void playSound(String url) async {
    await audioPlayer.seek(Duration(seconds: 30));
    await audioPlayer.play(url);
  }

  void pauseSound() async {
    await audioPlayer.pause();
  }

  void stopSound() async {
    await audioPlayer.stop();
  }

  void resumeSound() async {
    await audioPlayer.resume();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: Text('Playing Music'),
          ),
          body: Center(
              child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              RaisedButton(
                onPressed: () {
                  playSound(
                      'https://www.soundhelix.com/examples/mp3/SoundHelix-Song-1.mp3');
                },
                child: Text('Play'),
              ),
              RaisedButton(
                onPressed: () {
                  pauseSound();
                },
                child: Text('Pause'),
              ),
              RaisedButton(
                onPressed: () {
                  stopSound();
                },
                child: Text('Stop'),
              ),
              RaisedButton(
                onPressed: () {
                  resumeSound();
                },
                child: Text('Resume'),
              ),
              Text(
                durasi,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              )
            ],
          ))),
    );
  }
}
