import "package:flutter/material.dart";

class ButtonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new ButtonWidget();
  }
}
class ButtonWidget extends StatefulWidget {
  ButtonWidget({Key key}) : super(key: key);

  _ButtonWidgetState createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("按钮"),),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text("正常状态"),
            onPressed: () => {

            },
          ),
          FlatButton(
            child: Text("正常状态"),
            onPressed: () => {},
          ),
          OutlineButton(
            child: Text("正常状态"),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () => {},
          ),
          FlatButton(
          color: Colors.blue,
          highlightColor: Colors.blue[700],
          colorBrightness: Brightness.dark,
          splashColor: Colors.grey,
          child: Text("提交"),
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          onPressed: () => {},
        ),
        RaisedButton(
          color: Colors.blue,
          highlightColor: Colors.blue[700],
          colorBrightness: Brightness.dark,
          splashColor: Colors.grey,
          child: Text("提交"),
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
          onPressed: () => {},
        ),
        ],
      ),
    );
  }
}