import 'package:flutter/material.dart';
// import '../global_config.dart';

class ShareWidget extends StatefulWidget {
  @override
  _ShareWidgetState createState() => new _ShareWidgetState();
}

class _ShareWidgetState extends State<ShareWidget> {
  List<String> nameItems = <String>[
    '微信',
    '朋友圈',
    '微博',
  ];
  List<String> urlItems = <String>[
    'lib/images/share_wx.png',
    'lib/images/share_wxq.png',
    'lib/images/share_sina.png',
  ];
  @override
  Widget build(BuildContext context) {
    return new Container(
      height: 310.0,
      child: new Column(
        children: <Widget>[
          new Container(
            // height: 40.0,
            child: Text(
              '请选择分享平台',
              style: TextStyle(
                color: Colors.black,
                fontSize: 16.0,
              ),
              textAlign: TextAlign.center,
            ),
            color: Colors.white,
            margin: EdgeInsets.fromLTRB(0, 15, 0, 15),
          ),
          new Container(
            height: 0.5,
            color: Colors.blueGrey,
          ),
          new Padding(
            padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 0.0),
            child: new Container(
              height: 190.0,
              child: new GridView.builder(
                gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    mainAxisSpacing: 5.0,
                    childAspectRatio: 1.0),
                itemBuilder: (BuildContext context, int index) {
                  return new Column(
                    children: <Widget>[
                      new Padding(
                          padding: EdgeInsets.fromLTRB(0.0, 6.0, 0.0, 6.0),
                          child: Image.asset(
                            '${urlItems[index]}',
                            width: 50.0,
                            height: 50.0,
                            fit: BoxFit.fill,
                          )),
                      new Text(nameItems[index])
                    ],
                  );
                },
                itemCount: nameItems.length,
              ),
            ),
          ),
          new Container(
            height: 0.5,
            color: Colors.blueGrey,
          ),
          new GestureDetector(
            child: Container(
              child: new Text(
                '取  消',
                style: new TextStyle(fontSize: 18.0, color: Colors.blueGrey),
                
              ),
              padding: EdgeInsets.fromLTRB(0, 8, 0, 8),
            ),
            onTap: () {
              print('关闭');
              Navigator.canPop(context);
            },
          )
        ],
      ),
    );
  }
}
