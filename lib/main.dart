import 'package:flutter/material.dart';
import 'package:flutter_test_app/container.dart';
import 'package:flutter_test_app/image.dart';
import 'package:flutter_test_app/text.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Test Home Page'),
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.text_format),
            title: Text("Text widget"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => TextWidget()));
            },
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Image widget"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ImageWidget()));
            },
            trailing: Icon(Icons.arrow_forward_ios),
          ),
          ListTile(
            leading: Icon(Icons.image),
            title: Text("Container widget"),
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ContainerWidget()));
            },
            trailing: Icon(Icons.arrow_forward_ios),
          ),
         ],
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
