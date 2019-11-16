import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_dhapp/global_config.dart';

class DHAppBar {

  /*
   * 仅含 左侧返回按钮 及中间标题
   * appBar: DHAppBar().backAppbar(context, '个人资料',ture),
   * appBar: DHAppBar().backAppbar(context, '个人资料',ture,(){}),
   */
  backAppbar(BuildContext context, String title, bool hidden,{VoidCallback onPressed}) {
    return PreferredSize(
        preferredSize: Size.fromHeight(48),
        child: AppBar(
          title: Text(
            title,
            style: TextStyle(color: Colors.black, fontSize: 20.0,fontWeight:FontWeight.bold),
            
          ),
          centerTitle: true,
          leading: _leading(context,hidden,onPressed),
          brightness: Brightness.light,
          backgroundColor: GlobalConfig.navbackgroundColor,
          elevation: 0,
          iconTheme: IconThemeData(color: Colors.black),
        ));
  }
  
  /*
   * 设置左侧按钮
   */
  _leading(BuildContext context,bool hidden, VoidCallback onPressed) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Container(
          width: 45,
          padding: EdgeInsets.all(0),
          child: !hidden ? new IconButton(
            padding: EdgeInsets.all(5),
           icon: Image.asset(
             'lib/images/fanhui.png',
             fit: BoxFit.contain,
             width: 20,
             height: 20,
           
           ),
            onPressed: () {
              if (onPressed == null) {
                _popThis(context);
              } else {
                onPressed();
              }
            },
          ):null,
        ),
      ],
    );
  }


  /*
   * 关闭页面
   */
  _popThis(BuildContext context){
    Navigator.of(context).maybePop();
  }

}