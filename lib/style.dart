import 'dart:ui';

import 'package:flutter/material.dart';

InputDecoration AppInPutStyle(label){
  
  return InputDecoration(
   contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    filled: true,
    fillColor: Colors.white30,
    border: OutlineInputBorder(),
    labelText: label
  );
  
}

TextStyle HeadTextStyle(){
  return TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w500,
  );
}

ButtonStyle AppButtonStyle(){
  return ElevatedButton.styleFrom(
    padding: EdgeInsets.all(22),
    backgroundColor: Colors.green,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4))
    )
  );
}