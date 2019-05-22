import 'package:flutter/material.dart';

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // 获取路由里面的参数
    var agrms =  ModalRoute.of(context).settings.arguments;
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("New router")),
      body: Center(
        child: Column(children: <Widget>[
          Text("This is new route"),
          FlatButton(onPressed: (){
            // 返回上一页
            Navigator.pop(context);
          }, child: Text("返回上一页")),
          FlatButton(
            onPressed: (){
              // 导航到新的路由
              Navigator.push(context, new MaterialPageRoute(builder: (context){
                return new NewRoute();
              }));
            },
            child: Text("open new Router"),
            textColor: Colors.blue,
          ),
          Text(agrms??"")
        ],),
      ),
    );
  }
}
