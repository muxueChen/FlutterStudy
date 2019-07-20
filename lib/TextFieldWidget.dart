import 'package:flutter/material.dart';

class TextFieldPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: new MyTextField(),
    );
  }
}
class MyTextField extends StatefulWidget {
  MyTextField({Key key}) : super(key: key);

  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  //定义一个controller
  TextEditingController _unameController = null;
  // 通过controller获取输入框内容
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _unameController = new TextEditingController();
    _unameController.addListener((){
        print( "++++++" +_unameController.text);
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("输入框和表单"),),
    body: Column(
        children: <Widget>[
          TextField(
            controller: _unameController,
            autofocus: true,
            decoration: InputDecoration(
                labelText: "用户名",
                hintText: "用户名或邮箱",
                prefixIcon: Icon(Icons.person)
            ),
            onChanged: (value){
              print( ">>>>>>>>>>>" +value);
            },
          ),
          TextField(
            decoration: InputDecoration(
                labelText: "密码",
                hintText: "您的登录密码",
                prefixIcon: Icon(Icons.lock)
            ),
            obscureText: true,
          ),
        ],
      ),
    );
  }
}