

import 'package:flutter/material.dart';
// import 'package:fluttertoast/fluttertoast.dart';



 class DHSelectChip extends StatefulWidget {
  /// 标签的list
  final List dataList;

  /// 标签的list
  final List selectList;

  final bool isclick;
  final int maxNum;

  ///选择回调事件
  final Function(List) onSelectionChanged;

  DHSelectChip(this.dataList, {this.maxNum,this.selectList,this.isclick, this.onSelectionChanged});

  @override
  _DHSelectChipState createState() => _DHSelectChipState(selectList);
}

class _DHSelectChipState extends State<DHSelectChip> {
  List selectList;

  _DHSelectChipState(this.selectList);

  _buildChoiceList() {
    List<Widget> choices = List();

    for (var item in widget.dataList) {
 
      choices.add(
        Container(
        height: 40.0,
        padding: EdgeInsets.only(left: 5,right: 5,bottom: 5,top: 0),
        
        child: ChoiceChip(
          label: Text(
            item,
            style: TextStyle(
              fontSize: 16.0,
              color: selectList.contains(item) ? Colors.white:Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
          selected: selectList.contains(item),
          materialTapTargetSize: MaterialTapTargetSize.padded,
        
          selectedColor: Colors.black,
          backgroundColor: Colors.white,
          
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
            side: BorderSide(color: Colors.black, width: 1.0),
          ),
          onSelected: (selected) {
            setState(() {
                if(widget.isclick){
                  if(selectList.contains(item)){
                    selectList.remove(item);
                  }
                  else
                  {
                    if(selectList.length < widget.maxNum)
                    {
                      selectList.add(item);
                    }
                    else{
                      // Fluttertoast.showToast(
                      //     msg: "最多选择${widget.maxNum}个选项",
                      //     toastLength: Toast.LENGTH_SHORT,
                      //     gravity: ToastGravity.BOTTOM,
                      //     timeInSecForIos: 1,
                      //     backgroundColor: Colors.red,
                      //     textColor: Colors.white,
                      //     fontSize: 16.0
                      // );
                    }
                  }
                 widget.onSelectionChanged(selectList);
                }
            });
          },
        ),
       )
      );
    }
    return choices;
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(
      alignment: WrapAlignment.start,
      children: _buildChoiceList(),
    );
  }
}