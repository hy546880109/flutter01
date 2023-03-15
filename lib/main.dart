import 'package:flutter/material.dart';
import 'package:flutter01/login.dart';
void main() {
  runApp(
    MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: const Text('登陆界面'),
        shadowColor: const Color.fromARGB(32, 73, 200, 169),
        centerTitle: true,
      ), //配置头部
      body: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: const <Widget>[Myimage(), Myapp(), Mypassword(), Mybutton()],
      ),
    )),
  );
}
