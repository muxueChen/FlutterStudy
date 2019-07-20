
import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return new TextWidgetPage();
  }
}
class TextWidgetPage extends StatefulWidget {
  TextWidgetPage({Key key}) : super(key: key);
  _TextWidgetPageState createState() => _TextWidgetPageState();
}

class _TextWidgetPageState extends State<TextWidgetPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('文本与样式'),
      ),
      body: Container(child: Column(children: <Widget>[
        Text("Hello world," * 6 , textAlign: TextAlign.center, maxLines: 1, overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 20), textScaleFactor: 1.5,),
        Text("Hello world," * 6 , textAlign: TextAlign.center, style: TextStyle(fontSize: 20)),
        Text.rich(TextSpan(
         children: [
           TextSpan(text: "Home"),
           TextSpan(text: "https://flutterchina.club",
           style:TextStyle(color: Colors.blue)
           ),
           
         ]
        )),

      ],),),
    );
  }
}
