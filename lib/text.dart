import 'package:flutter/material.dart';

class TextWidget extends StatefulWidget {

  @override
  _TextWidgetState createState() => _TextWidgetState();
}

class _TextWidgetState extends State<TextWidget> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text widget"),
      ),
      body: Center(
        child: Text(
          "Hello world",
          style: TextStyle(
              color: Colors.grey, fontSize: 18, fontWeight: FontWeight.w600),
        ),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
