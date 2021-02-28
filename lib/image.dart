import 'package:flutter/material.dart';

class ImageWidget extends StatefulWidget {
  @override
  _ImageWidgetState createState() => _ImageWidgetState();
}

class _ImageWidgetState extends State<ImageWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image widget"),
      ),
      body: Center(
        child: _getNetworkImage(),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  Widget _getAssetsImage() {
    return Image.asset(
      "assets/small-logo.png",
      width: 100,
      height: 100,
    );
  }

  Widget _getNetworkImage() {
    return Image.network(
      "https://homepages.cae.wisc.edu/~ece533/images/boat.png",
      loadingBuilder: (context, child, progress) {
        return progress == null ? child : Text("Loading...");
      },
    );
  }
}
