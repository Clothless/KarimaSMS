import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CustomButton extends StatelessWidget{
  final String text;
  final double textSize;
  final double height;
  final double width;
  final Color background;
  final Color font;
  final double borderRadius;
  final void Function()? func;

  const CustomButton({
    super.key,
    this.text = "test",
    this.textSize = 16,
    this.height = 20,
    this.width = 100,
    this.background = Colors.white,
    this.font = Colors.black,
    this.borderRadius = 0,
    this.func,
    });
  


  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: func,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            borderRadius
          ),
          color: background,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: textSize,
              color: font,
              
            ),
            ),
        ),
      ),
    );
  }


}