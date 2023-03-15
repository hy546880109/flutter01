import 'package:assets_audio_player/assets_audio_player.dart';
import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'icon_text.dart';
import 'love.dart';
import 'music.dart';





class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Center(
        child: Image.asset(
          'images/1.gif',
          scale: 1.0,
        ),
      ),
      Center(
        //图标
        child: Container(
          width: 400,
          height: 350,
          color: Colors.white,
          child: const IconWithText(
            iconData: Icons.favorite,
            text: '我爱你',
          ),
        ),
      ),
      //播放按钮
      Container(
        width: 400,
        height: 250,
        color: Colors.white,
        child: Center(
          child: Container(
            width: 400,
            height: 100,
            color: Colors.blue,
            child: buildMarqueeWidget(['我','爱','你'],'2')
          ),
        ),
      )
    ]);
  }
}







