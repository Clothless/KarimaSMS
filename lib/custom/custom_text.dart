import 'package:flutter/material.dart';

class CustomText extends StatelessWidget{
  final String text;
  final Color color;
  final double fontsize;
  final FontWeight? fontWeight;
  final String? fontFamily;
  final AlignmentGeometry textAlign;
  final FontStyle? fontStyle;


  CustomText({
    this.text = "",
    this.color = Colors.black,
    this.fontsize = 18.0,
    this.fontWeight,
    this.fontFamily,
    this.textAlign = Alignment.center,
    this.fontStyle,
  });
  
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: textAlign,
      child: Text(
        text,
        overflow: TextOverflow.ellipsis,
        maxLines: 2,
        style: TextStyle(
          color: color,
          fontSize: fontsize,
          fontWeight: fontWeight,
          fontFamily: fontFamily,
          fontStyle: fontStyle,
        ),
      ),
    );
  }
}