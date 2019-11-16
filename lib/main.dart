import 'package:flutter/material.dart';
import 'index/index.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: "DH_APP",
      home: new Index(),
    );
  }

}

