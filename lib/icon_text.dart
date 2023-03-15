import 'package:flutter/material.dart';


//图标中添加文字
class IconWithText extends StatelessWidget {
  final IconData iconData;
  final String text;

  const IconWithText({Key? key, required this.iconData, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(iconData),
        SizedBox(
          height: 15.0,
          width: 50,
        ),
        Text(
          text,
          style: TextStyle(fontSize: 40.0),
        ),
      ],
    );
  }
}
