import 'package:flutter/material.dart';
import '../global_config.dart';
import '../NavgitionView/navbarview.dart';

class ThreePage extends StatefulWidget {

  @override
  _ThreepageState createState() => new _ThreepageState();

}

class _ThreepageState extends State<ThreePage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: DHAppBar().backAppbar(context,'THREE',true),
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