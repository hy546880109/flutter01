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
          height: 250,
          color: Colors.white,
          child: Icon(
            Icons.favorite,
            size: 100,
            color: Colors.red,
          ),
        ),
      ),
      //播放按钮
      Container(
        width: 400,
        height: 350,
        color: Colors.white,
        child: Center(
          child: Container(
              width: 400,
              height: 300,
              color: Colors.white,
              child: buildMarqueeWidget([
                "倚窗凭栏思绪翩",
                "情归何处问落红。",
                "相爱似一束烛火，",
                "温暖岁月暖彼此。",
                "海枯石烂情长在，",
                "千年之后亦如初。",
                "相濡以沫海角天，",
                "爱恋之心永相随。"
              ], '10')),
        ),
      )
    ]);
  }
}
