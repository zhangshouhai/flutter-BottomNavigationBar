import 'package:flutter/material.dart';

import '../NavgitionView/navbarview.dart';
import '../four/about.dart';

class HomePage extends StatefulWidget {

  @override
  _HomePageState createState() => new _HomePageState();

}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          appBar: DHAppBar().backAppbar(context,'HOME',true),
          body: new Center(
          
            child: new Container(
            
            child:GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                   new MaterialPageRoute(builder: (context) => new DHAbout()),
                  );
              },
              child: Text(
                  '关于我们',
                  style:TextStyle(
                 
                  fontSize: 20.0,
                )
              ),
            )
              
              
              


            ),
            

          ),
        ),
    
    );
  }

}