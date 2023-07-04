import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:nova/utils/size_cofig.dart';
class textfield extends StatelessWidget {
final String hinttext;

textfield({
 required  this.hinttext,
  required this.maxLines ,
  required this.maxLength,
  required this.keyboardType,
  this.suffixIcon,
  this.prefixIcon ,
  required this.controller
});

  final int maxLines;
final int maxLength;
final TextInputType keyboardType;
final IconData? prefixIcon;
final IconData? suffixIcon;
final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType:  keyboardType,
      maxLines: maxLines,
      maxLength: maxLength,
      decoration: InputDecoration(
        prefixIcon: Icon(prefixIcon),
        suffixIcon:  Icon(suffixIcon),
        fillColor: Colors.white,
        contentPadding: EdgeInsetsDirectional.all(20),
        counterText: "",
        filled: true,
        hintText: hinttext,
        hintStyle: TextStyle(
            color: Colors.grey.shade500
        ),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 1,
              color: Colors.white,



            )

        ),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15),
            borderSide: BorderSide(
              width: 1,
              color: Colors.white,



            ),
          

        ),
      ),
       
    );
  }
}
