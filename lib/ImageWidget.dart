import 'package:flutter/material.dart';

class ImageWidgetPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Container(
      child: new ImageWidget(),
    );
  }
}

class ImageWidget extends StatefulWidget {
  ImageWidget({Key key}) : super(key: key);

  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(title: Text("图片与Icon"),),
    body: Column(children: <Widget>[
      Image.asset("lib/images/icon.png", width: 100.0, height: 100,),
       Image.network(
      "https://avatars2.githubusercontent.com/u/20411648?s=460&v=4",
     width: 100.0,
    )
    ],),
   
    );
  }
}