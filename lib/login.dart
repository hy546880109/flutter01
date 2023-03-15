import 'package:flutter/material.dart';
import 'package:flutter01/home.dart';
class Myimage extends StatelessWidget {
  const Myimage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 30.0, 10.0, 10.0),
        child: SizedBox(
          //本地图片
          width: 300.0,
          height: 200.0,
          //本地图片
          child: Image.asset(
            'images/1.jpeg',
            scale: 1.0,
          ),
          //                color: Colors.lightBlue,
        ));
  }
}

var usernameController = TextEditingController();
var passwordController = TextEditingController();

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      //用户输入框
      child: TextField(
        controller: usernameController,
        maxLength: 11,
        maxLines: 1,
        autocorrect: true,
        decoration: const InputDecoration(
          labelText: "请输入用户名",
          helperText: "用户名",
          icon: Icon(Icons.account_box),
        ),
        onChanged: (value) => print("change $value"),
        onSubmitted: (value) => print("submit $value"),
      ),
    );
  }
}

class Mypassword extends StatelessWidget {
  const Mypassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      //密码输入框
      child: TextField(
        controller: passwordController,
        maxLength: 11,
        maxLines: 1,
        obscureText: true,
        keyboardType: TextInputType.number,
        autocorrect: true,
        decoration: const InputDecoration(
          labelText: "请输入密码",
          helperText: "密码",
          icon: Icon(Icons.password_rounded),
        ),
        onChanged: (value) => print("change $value"),
        onSubmitted: (value) => print("submit $value"),
      ),
    );
  }
}

class Mybutton extends StatelessWidget {
  const Mybutton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400,
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
      child: Card(
        //登陆按钮
        child: TextButton(
          style: const ButtonStyle(
              backgroundColor: MaterialStatePropertyAll(Colors.blue)),
          onPressed: () {
            print('点了登陆');
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => HomePage()));

          },
          child: const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text('登陆',
                style: TextStyle(
                    color: Color.fromARGB(238, 12, 12, 11), fontSize: 20)),
          ),
        ),
      ),
    );
  }
}
