import 'dart:ui';

import 'package:flutter/material.dart';

TextStyle HeadLine(context){

  var width = MediaQuery.of(context).size.width;
  if(width<500){

    return TextStyle(
      color: Color(0xff000000),
      fontSize: 34,
    );
  }

  else{
    return TextStyle(
      color: Color(0xff09ff3b),
      fontSize: 65,
    );
  }



}