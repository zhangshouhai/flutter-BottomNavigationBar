import 'package:flutter/material.dart';
import '../global_config.dart';
import '../NavgitionView/navbarview.dart';

class SecondPage extends StatefulWidget {

  @override
  _SecondPageState createState() => new _SecondPageState();

}

class _SecondPageState extends State<SecondPage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: DHAppBar().backAppbar(context, 'SECOND',true),
          body: new Center(
            child: new Container(
              color: Colors.white,


            ),

          ),
        ),
        theme: GlobalConfig.themeData
    );
  }

}