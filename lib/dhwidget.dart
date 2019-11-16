import 'package:flutter/material.dart';


/*
   * Text 组件  
   * DHText: DHText().textStr( '个人资料',TextStyle),
   * DHText: DHText().textStr( '个人资料',TextStyle,(){}),
   */

class DHText {

textStr( String title, TextStyle style,
    {VoidCallback onPressed, EdgeInsets padding}) {
  return GestureDetector(
    child: Container(
      child: Text(
        title,
        textAlign: TextAlign.left,
        style: style == null
            ? TextStyle(color: Colors.black, fontSize: 16.0)
            : style,
      ),
      alignment: Alignment.centerLeft,
      // padding: EdgeInsets.all(5),
    ),
    onTap: () {
      if (onPressed != null) {
        onPressed();
      }
    },
  );

}
}


/*
   * Image 组件  
   * DHImageView: DHImageView().dhimage( 'url',imagewidth,imageheight,rounds),
   * DHImageView: DHImageView().dhimage( 'url',imagewidth,imageheight,rounds,(){}),
   */

class DHImageView{

dhimage(String imageUrl,double imagewidth,double imageheight,double rounds,{VoidCallback onImageCilck}){

   bool result = imageUrl.contains('http');
  return GestureDetector(
      
    child:ClipRRect(

        child: Image(
        image: result?NetworkImage(imageUrl):AssetImage(imageUrl),
        width: imagewidth,
        height: imageheight,
        fit:BoxFit.cover

      ),
      borderRadius: BorderRadius.all( Radius.circular(rounds)),

    ),

    onTap: () {
      if (onImageCilck != null) {
        onImageCilck();
      }
    },
  );
  
}

}