import 'package:flutter/material.dart';

class StatemanagerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return _StatemanagerPage();
  }
}
class _StatemanagerPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StatemanagerPageState();
  }
}
class _StatemanagerPageState extends State<_StatemanagerPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("状态管理"),),
      body: Center(child: Text("小明"),),
    );
  }
}