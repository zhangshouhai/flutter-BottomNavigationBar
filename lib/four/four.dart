
import 'package:flutter/material.dart';
import 'package:flutter_dhapp/dhwidget.dart';

// import '../z_souse/choice_chip/dh_choice_select.dart';




class FourPage extends StatefulWidget {

  @override
  _FourPageState createState() => new _FourPageState();

}

class _FourPageState extends State<FourPage> {

  var userAvatar;
  var userName;
  var titles = [ "" ,"我的作品", "阅读收藏", "我的关注", "我的订单", "设置", "向我们推荐", "申请成为匠人","联系我们"];
  
  static const double IMAGE_ICON_WIDTH = 30.0;
  static const double ARROW_ICON_WIDTH = 16.0;
  var rightArrowIcon = new Icon(Icons.keyboard_arrow_right,
    color: Colors.grey,
    size:  IMAGE_ICON_WIDTH,

  );

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: new Scaffold(
          body: new ListView.builder(
            itemBuilder: (context, i) => renderRow(context, i),
            itemCount: titles.length ,
            padding: new EdgeInsets.fromLTRB(0, 0, 0, 0),

          ),
          backgroundColor: Colors.white,
        ),
    );
  }



  renderRow(context, i) {
    final userHeaderHeight = 350.0;
    if (i == 0) {
      var userHeader = new Container(
          height: userHeaderHeight,
          color:Colors.redAccent,
          child: Column(
            children: <Widget>[
    Container(
      child: fourTitleRow,
    ),
    Container(
      child: DHText().textStr('My joveypage', TextStyle(),onPressed: (){
        print('My joveypage');
      }),
      padding: EdgeInsets.only(left: 30),
    ),

    Container(
      child: DHImageView().dhimage('https://timgsa.baidu.com/timg?image&quality=80&size=b9999_10000&sec=1572521333702&di=53368c2255ad1ebeb249b858a7f4e95b&imgtype=0&src=http%3A%2F%2Fwww.qqju.com%2Fpic%2Ftx%2Ftx22877.jpg',80.0,80.0,40.0,onImageCilck:(){

      }),
      margin: EdgeInsets.only(left: 30,top: 20),
      alignment: Alignment.centerLeft,
    ),
     Container(
      child: DHText().textStr('昵称', TextStyle(color: Colors.black,fontSize: 18.0,fontWeight: FontWeight.bold)),
      padding: EdgeInsets.only(left: 30,top: 10),
    ),

   Container(
      child: DHText().textStr('汉族', TextStyle()),
      padding: EdgeInsets.only(left: 30,top: 10),
    ),
  
  
  
    
   
      
    

  ],
            
          ) ,
             
      );

        return new GestureDetector(
        onTap: () {

        
        },
        child: userHeader,
      );

    }
    // String title = titles[i];
    var listItemContent = new Padding(
      padding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
        
      );
      return new InkWell(
        child: listItemContent,
        onTap: () {

        },
      );
    }


}




Widget fourHeaderView = new Column(

  
  

);




//My  titlelabel top 
// 向朋友推荐
Widget fourTitleRow = new Row(
  mainAxisAlignment: MainAxisAlignment.spaceAround,
  children: <Widget>[


    Expanded(
      child: Container(
      height: 80.0,
      child: Text(
        '我的JOVEY主页',
        style: TextStyle(
          fontSize: 24.0,
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
        textAlign: TextAlign.left,
      ),
      margin: EdgeInsets.only(left: 30),
      alignment: Alignment.bottomLeft,
      ),
    ),
    

    Container(
      child: Image.asset(
        'lib/images/play_share.png',
        width: 25.0,
        height: 25.0,
        fit: BoxFit.cover,
      ),
      height: 80.0,
      alignment: Alignment.bottomRight,
      margin: EdgeInsets.only(right: 20,bottom: 10),
    ), 
  ],
);




