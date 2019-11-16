import 'package:flutter/material.dart';
import 'package:flutter_dhapp/four/shareview.dart';
import '../global_config.dart';
import '../NavgitionView/navbarview.dart';

class DHAbout extends StatefulWidget {
  @override
  _DHAboutState createState() => new _DHAboutState();
}

class _DHAboutState extends State<DHAbout> {



  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        
        home: new Scaffold(
          backgroundColor:GlobalConfig.viewbackgroundColor ,
          appBar: DHAppBar().backAppbar(context, '', false),
          body: new Center(

            child: Column(
              children: <Widget>[
                new Row(
                  children: <Widget>[
                    Container(
                      child: Text(
                        '关于拙物',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 22.0,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(20, 10.0, 10.0, 5.0),
                    ),
                    Container(
                      child: Text(
                        'V1.0.0',
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: Colors.black,
                        ),
                      ),
                      padding: EdgeInsets.fromLTRB(0, 15.0, 10.0, 5.0),
                    ),
                  ],
                ),
                Container(
                  child: Text(
                    'About JOVEY',
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  padding: EdgeInsets.fromLTRB(20.0, 0.0, 10.0, 5.0),
                  alignment: Alignment.topLeft,
                ),
                Container(
                  child: Image.asset(
                    'lib/images/logo.png',
                    width: 200.0,
                    height: 200.0,
                    fit: BoxFit.cover,
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
                  padding: EdgeInsets.fromLTRB(10, 10.0, 10.0, 10.0),
                ),
                Container(
                  child: Text(
                    '巧 未 拙 巧 ，彼 物 匠 兮',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.grey,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
                ),
                Container(
                  child: Text(
                    '56个艺术家',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 16.0,
                      color: Colors.black,
                    ),
                  ),
                  margin: EdgeInsets.fromLTRB(0, 10, 0, 0),
                ),

                  GestureDetector(
                   child: Container(
                        width: 150.0,
                        margin: EdgeInsets.fromLTRB(0, 40, 0, 0),
                        child: recommended
                        
                    ),
                    onTap: (){
                      showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return ShareWidget();
                      });

                    }
                  ),

                Expanded(
                    child: copyright

                ),
                

                 
              ],
            ),

          ),
          
        ),
      );
  }
}
// 向朋友推荐
Widget recommended = new Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      child: Image.asset(
        'lib/images/play_share.png',
        width: 25.0,
        height: 25.0,
        fit: BoxFit.cover,
      ),
      alignment: Alignment.bottomRight,
    ),
    Container(
      child: Text(
        '向朋友推荐',
        textAlign: TextAlign.left,
        style: TextStyle(
          fontSize: 18.0,
          color: Colors.black,
        ),
      ),
      alignment: Alignment.bottomLeft,
    )
  ],
);

//版权所有以及联系方式
Widget copyright = new Column(
  mainAxisAlignment: MainAxisAlignment.end,
  children: <Widget>[

    Container(
      child: Text(
        '版权所有',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
      ),
      
      alignment: Alignment.center,
      height: 30.0,
    ),
    Container(
      child: Text(
        'Copyright © 2016-2019 山东匠兮网络科技有限公司',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
      ),
     
      alignment: Alignment.center,
      height: 30.0,
    ),
    Container(
      height: 30.0,
      child: Text(
        '客服联系方式：400-100-8511',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 14.0,
          color: Colors.black,
        ),
      ),
      alignment: Alignment.center,
      margin: EdgeInsets.only(bottom: 30),
    )

  ],

);



