import 'dart:async';
import 'package:flutter/cupertino.dart';

MarqueeWidget buildMarqueeWidget(List<String> loopList, String s) {
  ///上下轮播 安全提示
  return MarqueeWidget(
    //子Item构建器
    itemBuilder: (BuildContext context, int index) {
      String itemStr = loopList[index];
      //通常可以是一个 Text文本
      return Text(itemStr);
    },
    //循环的提示消息数量
    count: loopList.length,
  );
}

// 上下滚动的消息轮播
class MarqueeWidget extends StatefulWidget {
  /// 子视图数量
  final int count;

  ///子视图构建器
  final IndexedWidgetBuilder itemBuilder;

  ///轮播的时间间隔
  final int loopSeconds;

  const MarqueeWidget({
    Key? key,
    required this.count,
    required this.itemBuilder,
    this.loopSeconds = 1,
  }) : super(key: key);

  @override
  _MarqueeWidgetState createState() => _MarqueeWidgetState();
}

class _MarqueeWidgetState extends State<MarqueeWidget> {
  late PageController _controller;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _controller = PageController();
    _timer = Timer.periodic(Duration(seconds: widget.loopSeconds), (timer) {
      if (_controller.page != null) {
        // 如果当前位于最后一页，则直接跳转到第一页，两者内容相同，跳转时视觉上无感知
        if (_controller.page!.round() >= widget.count) {
          _controller.jumpToPage(0);
        }
        _controller.nextPage(
            duration: const Duration(seconds: 1), curve: Curves.linear);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: _controller,
        itemBuilder: (buildContext, index) {
          if (index < widget.count) {
            return widget.itemBuilder(buildContext, index);
          } else {
            return widget.itemBuilder(buildContext, 0);
          }
        },
        itemCount: widget.count + 1,
      ),
    );
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _timer.cancel();
  }
}
