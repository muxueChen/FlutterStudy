import 'package:flutter/material.dart';
// state 生命周期
class LifecyclePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StateLife();
  }
}

class StateLife extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _StateLifeState();
  }
}
class _StateLifeState extends State<StateLife> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print(">>>>>>>>>>>>>>>initState");
  }
  @override
  Widget build(BuildContext context) {
    print(">>>>>>>>>>>>>>>build");
    return Scaffold(
      appBar: AppBar(title: Text("State 的生命周期"),),
      body: Center(
        child: FlatButton(onPressed: (){

        }, child: Text("小明")),
      ),
    );
  }
  @override
  void didUpdateWidget(StateLife oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print(">>>>>>>>>>>>>>>didUpdateWidget");
  }
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    print(">>>>>>>>>>>>>>>deactivate");
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print(">>>>>>>>>>>>>>>dispose");
  }
  @override
  void reassemble() {
    // TODO: implement reassemble
    super.reassemble();
    print(">>>>>>>>>>>>>>>reassemble");
  }
  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();
    print(">>>>>>>>>>>>>>>didChangeDependencies");
  }
}
