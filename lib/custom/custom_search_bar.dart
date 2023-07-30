import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget{
  final bool autoCorrect;
  final bool autoFocus;
  final double width;
  final String hint;
  final Color hintColor;
  final TextEditingController? controller;
  final double borderRadius;
  final Color fillColor;
  final Icon? prefix;
  final Icon? suffix;
  final double fontSize;
  final int maxLines;
  final int minLines;


  const CustomSearchBar({
    this.autoCorrect = false,
    this.autoFocus = false,
    this.hint = "Search...",
    this.hintColor = Colors.white,
    this.width = 200,
    this.controller,
    this.borderRadius = 5,
    this.fillColor = Colors.black,
    this.prefix,
    this.suffix,
    this.fontSize = 16,
    this.maxLines = 1,
    this.minLines = 1,
  });
  
  
  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      decoration: BoxDecoration(
        color: fillColor,
        borderRadius: BorderRadius.circular(borderRadius)
      ),
      child: TextField(
        maxLines: maxLines,
        minLines: minLines,
        controller: controller,
        autocorrect: autoCorrect,
        autofocus: autoFocus,
        style: TextStyle(
          color: hintColor,
        ),
        decoration: InputDecoration(
          prefixIcon: Icon(Icons.search, color: hintColor,),
          suffixIcon: suffix,
          hintText: hint,
          hintStyle: TextStyle(
            color: hintColor,
            fontSize: fontSize
          ),
          border: InputBorder.none,
        ),
      ),
    );
  }


}