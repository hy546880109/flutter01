import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool _play = false;
  @override
  Widget build(BuildContext context) {
    return AudioWidget.assets(
      path: "assets/2.mp3",
      play: _play,
      child: ElevatedButton(
          child: Text(
            _play ? "pause" : "play",
          ),
          onPressed: () {
            setState(() {
              _play = !_play;
            });
          }),
      onReadyToPlay: (duration) {
        //onReadyToPlay
      },
      onPositionChanged: (current, duration) {
        //onPositionChanged
      },
    );
  }
}
