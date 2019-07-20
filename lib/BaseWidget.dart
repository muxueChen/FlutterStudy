import 'package:flutter/material.dart';
import 'TextWidget.dart';
import 'ButtonWidget.dart';
import 'ImageWidget.dart';
import 'SwitchAndCheckBoxTestRoute.dart';
import 'TextFieldWidget.dart';
import 'FocusTestRoute.dart';
import 'FormTestRoutePage.dart';

class BaseWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new BaseWidgetPage();
  }
}

class BaseWidgetPage extends StatefulWidget {
    @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return new BaseWidgetPageState();
  }
}

class BaseWidgetPageState extends State <BaseWidgetPage> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(title: Text("基础 Widget"),),
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          FlatButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
             return new TextWidget();
            }));
          }, child: Text("文本和字体", style: TextStyle(color: Colors.blue)),),
          FlatButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
             return new ButtonPage();
            }));
          }, child: Text("按钮", style: TextStyle(color: Colors.blue)),),
          FlatButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
             return new ImageWidgetPage();
            }));
          }, child: Text("图片和Icon", style: TextStyle(color: Colors.blue)),),
          FlatButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
             return new SwitchAndCheckBoxTestPage();
            }));
          }, child: Text("单选框和复选框", style: TextStyle(color: Colors.blue)),),
          FlatButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
             return new TextFieldPage();
            }));
          }, child: Text("输入框和表单", style: TextStyle(color: Colors.blue),),),
           FlatButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
             return new FocusTestRoutePage();
            }));
          }, child: Text("输入框焦点控制", style: TextStyle(color: Colors.blue),),),
           FlatButton(onPressed: (){
            Navigator.push(context, new MaterialPageRoute(builder: (context){
             return new FormTestRoutePage();
            }));
          }, child: Text("form 表单测试", style: TextStyle(color: Colors.blue),),)
        ],
      ),),
    );
  }
}