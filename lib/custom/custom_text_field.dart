import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget{
  final bool autoCorrect;
  final bool autoFocus;
  final double height;
  final double width;
  final String hint;
  final Color hintColor;
  final double fieldPad;
  final double contentPad;
  final TextEditingController? controller;
  final double borderRadius;
  final Color borderColor;
  final Color fillColor;
  final Icon? prefix;
  final Icon? suffix;


  

  CustomTextField({
    super.key,
    this.autoCorrect = true,
    this.autoFocus = false,
    this.height = 18,
    this.hint = "",
    this.hintColor = Colors.grey,
    this.width = 100,
    this.fieldPad  = 0,
    this.contentPad  = 0,
    this.controller,
    this.borderRadius = 0,
    this.borderColor = Colors.transparent,
    this.fillColor = Colors.transparent,
    this.prefix,
    this.suffix,
    });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(fieldPad),
      child: Container(
        decoration: BoxDecoration(
          color: fillColor,
          border: Border.all(
            color: borderColor,
          ),
          borderRadius: BorderRadius.circular(borderRadius)
        ),
        child: TextField(
              autocorrect: autoCorrect,
              autofocus: autoFocus,
              controller: controller,
              decoration: InputDecoration(
                prefixIcon: prefix,
                suffixIcon: suffix,
                focusedBorder: InputBorder.none,
                enabledBorder: const UnderlineInputBorder(
                  borderSide: BorderSide.none
                ),
                contentPadding: EdgeInsets.all(contentPad),
                hintText: hint,
                hintStyle: TextStyle(
                  color: hintColor,
                  
                )
              ),
            ),
      ),
    );
  }

}