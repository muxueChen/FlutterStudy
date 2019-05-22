import 'package:flutter/material.dart';
import 'package:first_flutter_app/NewRoute.dart';
import 'package:english_words/english_words.dart';
import 'package:first_flutter_app/Lifecycle.dart';
import 'StateManager.dart';
import 'package:first_flutter_app/SuperManageChildState.dart';
// 应用程序入口
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // 主题颜色
        primarySwatch: Colors.blue,
      ),
      // 应用首页路由
      routes: {
        "new_page":(context)=> NewRoute()
      },
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.display1,
            ),
            FlatButton(
              onPressed: (){
                  // 导航到新的路由
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return new LifecyclePage();
                }));
              },
              child: Text("State 的生命周期"),
              textColor: Colors.blue,
            ),
            FlatButton(
              onPressed: (){
                // 导航到新的路由
                Navigator.push(context, new MaterialPageRoute(builder: (context){
                  return new StatemanagerPage();
                }));
              },
              child: Text("State 的状态管理"),
              textColor: Colors.blue,
            ),
            FlatButton(onPressed: (){
              Navigator.push(context, new MaterialPageRoute(builder: (context){
                return new SuperManageChildStatePage();
              }));
            }, child: Text("父 widget 管理 子 widget 的状态")),

            FlatButton(
              onPressed: (){
                // 通过路由的名称打开新的路由页面
                Navigator.pushNamed(context, "new_page");
              },
              child: Text("通过路由的名称打开新的路由页面"),
              textColor: Colors.blue,
            ),
            FlatButton(
              onPressed: (){
                // 通过路由的名称打开新的路由页面
                Navigator.pushNamed(context, "new_page", arguments: "Hello 小不点");
              },
              child: Text("通过路由的名称打开新的路由页面,并传递参数"),
              textColor: Colors.blue,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
