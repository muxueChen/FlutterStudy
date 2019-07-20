import 'package:flutter/material.dart';

class SwitchAndCheckBoxTestPage extends StatelessWidget {
  const SwitchAndCheckBoxTestPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new SwitchAndCheckBoxTestRoute();
  }
}
class SwitchAndCheckBoxTestRoute extends StatefulWidget {
  SwitchAndCheckBoxTestRoute({Key key}) : super(key: key);

  _SwitchAndCheckBoxTestRouteState createState() => _SwitchAndCheckBoxTestRouteState();
}

class _SwitchAndCheckBoxTestRouteState extends State<SwitchAndCheckBoxTestRoute> {
  // 维护单选开关状态
  bool _switchSelected = true;
  // 维护复选框状态
  bool _checkboxSelected = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("单选框和复选框"),),body: Column(
      children: <Widget>[
        Switch(
          value: _switchSelected,
          onChanged: (value){
            // 刷新页面
            setState(() {
              _switchSelected = value;
            });
          },
        ),
        Checkbox(
          value: _checkboxSelected,
          activeColor: Colors.red,
          onChanged: (value){
            setState(() {
              _checkboxSelected = value;
            });
          },
        ),
      ],
    ),);
    
  }
}